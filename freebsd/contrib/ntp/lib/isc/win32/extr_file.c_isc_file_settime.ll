; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@_O_RDWR = common dso_local global i32 0, align 4
@_O_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_file_settime(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @REQUIRE(i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @_O_RDWR, align 4
  %18 = load i32, i32* @_O_BINARY, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open(i8* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @isc__errno2result(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %12
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @_get_osfhandle(i32 %26)
  %28 = trunc i64 %27 to i32
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @SetFileTime(i32 %28, i32* null, i32* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @close(i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* @errno, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @isc__errno2result(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %25
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %35, %22
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @isc__errno2result(i32) #1

declare dso_local i32 @SetFileTime(i32, i32*, i32*, i32*) #1

declare dso_local i64 @_get_osfhandle(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
