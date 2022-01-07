; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_error.c_hx509_get_error_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_error.c_hx509_get_error_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.rk_strpool = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"<unknown error: %d>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hx509_get_error_string(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rk_strpool*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rk_strpool* null, %struct.rk_strpool** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @com_right(i32 %24, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @strdup(i8* %30)
  store i8* %31, i8** %3, align 8
  br label %73

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = call i8* @strerror(i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @strdup(i8* %38)
  store i8* %39, i8** %3, align 8
  br label %73

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i8* null, i8** %3, align 8
  br label %73

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  store i8* %46, i8** %3, align 8
  br label %73

47:                                               ; preds = %15
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %7, align 8
  br label %51

51:                                               ; preds = %66, %47
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %65 = call %struct.rk_strpool* @rk_strpoolprintf(%struct.rk_strpool* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %64)
  store %struct.rk_strpool* %65, %struct.rk_strpool** %6, align 8
  br label %66

66:                                               ; preds = %54
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %7, align 8
  br label %51

70:                                               ; preds = %51
  %71 = load %struct.rk_strpool*, %struct.rk_strpool** %6, align 8
  %72 = call i8* @rk_strpoolcollect(%struct.rk_strpool* %71)
  store i8* %72, i8** %3, align 8
  br label %73

73:                                               ; preds = %70, %45, %44, %37, %29
  %74 = load i8*, i8** %3, align 8
  ret i8* %74
}

declare dso_local i8* @com_right(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local %struct.rk_strpool* @rk_strpoolprintf(%struct.rk_strpool*, i8*, i32, i8*) #1

declare dso_local i8* @rk_strpoolcollect(%struct.rk_strpool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
