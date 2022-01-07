; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_froms.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_froms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_froms(%struct.sshbuf* %0, %struct.sshbuf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca %struct.sshbuf**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sshbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store %struct.sshbuf** %1, %struct.sshbuf*** %5, align 8
  %10 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %11 = icmp eq %struct.sshbuf* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.sshbuf**, %struct.sshbuf*** %5, align 8
  %14 = icmp eq %struct.sshbuf** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %12
  %18 = load %struct.sshbuf**, %struct.sshbuf*** %5, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %18, align 8
  %19 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %20 = call i32 @sshbuf_peek_string_direct(%struct.sshbuf* %19, i32** %6, i64* %7)
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call %struct.sshbuf* @sshbuf_from(i32* %25, i64 %26)
  store %struct.sshbuf* %27, %struct.sshbuf** %8, align 8
  %28 = icmp eq %struct.sshbuf* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %24
  %32 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 4
  %35 = call i32 @sshbuf_consume(%struct.sshbuf* %32, i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %39 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %40 = call i32 @sshbuf_set_parent(%struct.sshbuf* %38, %struct.sshbuf* %39)
  store i32 %40, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37, %31
  %43 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %44 = call i32 @sshbuf_free(%struct.sshbuf* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %37
  %47 = load %struct.sshbuf*, %struct.sshbuf** %8, align 8
  %48 = load %struct.sshbuf**, %struct.sshbuf*** %5, align 8
  store %struct.sshbuf* %47, %struct.sshbuf** %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %42, %29, %22, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @sshbuf_peek_string_direct(%struct.sshbuf*, i32**, i64*) #1

declare dso_local %struct.sshbuf* @sshbuf_from(i32*, i64) #1

declare dso_local i32 @sshbuf_consume(%struct.sshbuf*, i64) #1

declare dso_local i32 @sshbuf_set_parent(%struct.sshbuf*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
