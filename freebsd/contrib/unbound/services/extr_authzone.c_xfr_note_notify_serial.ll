; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_note_notify_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_note_notify_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, i32, i8*)* @xfr_note_notify_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_note_notify_serial(%struct.auth_xfer* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.auth_xfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %8 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %13 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %21 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @compare_serial(i8* %22, i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %29 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %19
  br label %71

31:                                               ; preds = %16, %11, %3
  %32 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %33 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %38 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %46 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %48 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %47, i32 0, i32 2
  store i8* null, i8** %48, align 8
  br label %70

49:                                               ; preds = %41, %36, %31
  %50 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %51 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %56 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %69

60:                                               ; preds = %54, %49
  %61 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %62 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %65 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %68 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %60, %59
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %30
  ret void
}

declare dso_local i64 @compare_serial(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
