; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_isc_httpd_addheaderuint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_isc_httpd_addheaderuint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s: %s\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_httpd_addheaderuint(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [21 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %12 = load i32, i32* %7, align 4
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %17 = call i32 @strlen(i8* %16)
  %18 = add i32 2, %17
  %19 = load i32, i32* %9, align 4
  %20 = add i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add i32 %21, 2
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %37, %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @isc_buffer_availablelength(i32* %25)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = call i64 @grow_headerspace(%struct.TYPE_4__* %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @ISC_R_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %4, align 8
  br label %52

37:                                               ; preds = %29
  br label %23

38:                                               ; preds = %23
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @isc_buffer_used(i32* %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @isc_buffer_add(i32* %48, i32 %49)
  %51 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %38, %35
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isc_buffer_availablelength(i32*) #1

declare dso_local i64 @grow_headerspace(%struct.TYPE_4__*) #1

declare dso_local i32 @isc_buffer_used(i32*) #1

declare dso_local i32 @isc_buffer_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
