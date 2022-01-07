; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_deserialise_nullable_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-options.c_deserialise_nullable_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, i8**)* @deserialise_nullable_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deserialise_nullable_string(%struct.sshbuf* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %10 = call i32 @sshbuf_get_u8(%struct.sshbuf* %9, i64* %7)
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %19

17:                                               ; preds = %12
  %18 = load i8**, i8*** %5, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i8** [ null, %16 ], [ %18, %17 ]
  %21 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %13, i8** %20, i32* null)
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @sshbuf_get_u8(%struct.sshbuf*, i64*) #1

declare dso_local i32 @sshbuf_get_cstring(%struct.sshbuf*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
