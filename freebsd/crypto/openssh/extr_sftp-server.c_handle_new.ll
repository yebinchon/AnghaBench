; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-server.c_handle_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-server.c_handle_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i32, i32* }

@first_unused_handle = common dso_local global i32 0, align 4
@num_handles = common dso_local global i64 0, align 8
@handles = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, i32*)* @handle_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_new(i32 %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @first_unused_handle, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %30

15:                                               ; preds = %5
  %16 = load i64, i64* @num_handles, align 8
  %17 = add nsw i64 %16, 1
  %18 = load i64, i64* @num_handles, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -1, i32* %6, align 4
  br label %80

21:                                               ; preds = %15
  %22 = load i64, i64* @num_handles, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @num_handles, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @handles, align 8
  %25 = load i64, i64* @num_handles, align 8
  %26 = call %struct.TYPE_4__* @xreallocarray(%struct.TYPE_4__* %24, i64 %25, i32 4)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** @handles, align 8
  %27 = load i64, i64* @num_handles, align 8
  %28 = sub nsw i64 %27, 1
  %29 = call i32 @handle_unused(i64 %28)
  br label %30

30:                                               ; preds = %21, %5
  %31 = load i32, i32* @first_unused_handle, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @handles, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* @first_unused_handle, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @handles, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %38, i32* %43, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @handles, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 7
  store i32* %44, i32** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @handles, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %50, i32* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @handles, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %56, i32* %61, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @xstrdup(i8* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @handles, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 6
  store i32 %63, i32* %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @handles, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @handles, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %30, %20
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_4__* @xreallocarray(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @handle_unused(i64) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
