; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_stringb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_stringb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_get_stringb(%struct.sshbuf* %0, %struct.sshbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %5, align 8
  %9 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %10 = call i32 @sshbuf_peek_string_direct(%struct.sshbuf* %9, i32* null, i32* null)
  store i32 %10, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %14 = call i32 @sshbuf_get_u32(%struct.sshbuf* %13, i32* %6)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @sshbuf_reserve(%struct.sshbuf* %17, i32 %18, i32** %7)
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @sshbuf_get(%struct.sshbuf* %22, i32* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %16, %12, %2
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @sshbuf_peek_string_direct(%struct.sshbuf*, i32*, i32*) #1

declare dso_local i32 @sshbuf_get_u32(%struct.sshbuf*, i32*) #1

declare dso_local i32 @sshbuf_reserve(%struct.sshbuf*, i32, i32**) #1

declare dso_local i32 @sshbuf_get(%struct.sshbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
