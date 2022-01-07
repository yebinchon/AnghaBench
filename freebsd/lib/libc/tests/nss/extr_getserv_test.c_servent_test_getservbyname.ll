; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getserv_test.c_servent_test_getservbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getserv_test.c_servent_test_getservbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i8*, i8**, i32 }
%struct.servent_test_data = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"testing getservbyname() with the following data:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"not ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.servent*, i8*)* @servent_test_getservbyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @servent_test_getservbyname(%struct.servent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.servent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.servent*, align 8
  store %struct.servent* %0, %struct.servent** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.servent*, %struct.servent** %4, align 8
  %10 = call i32 @dump_servent(%struct.servent* %9)
  %11 = load %struct.servent*, %struct.servent** %4, align 8
  %12 = getelementptr inbounds %struct.servent, %struct.servent* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.servent*, %struct.servent** %4, align 8
  %15 = getelementptr inbounds %struct.servent, %struct.servent* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.servent* @getservbyname(i8* %13, i32 %16)
  store %struct.servent* %17, %struct.servent** %7, align 8
  %18 = load %struct.servent*, %struct.servent** %7, align 8
  %19 = call i64 @servent_test_correctness(%struct.servent* %18, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %71

22:                                               ; preds = %2
  %23 = load %struct.servent*, %struct.servent** %7, align 8
  %24 = load %struct.servent*, %struct.servent** %4, align 8
  %25 = call i64 @compare_servent(%struct.servent* %23, %struct.servent* %24, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to %struct.servent_test_data*
  %30 = load %struct.servent*, %struct.servent** %7, align 8
  %31 = call i64 @servent_check_ambiguity(%struct.servent_test_data* %29, %struct.servent* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %71

34:                                               ; preds = %27, %22
  %35 = load %struct.servent*, %struct.servent** %4, align 8
  %36 = getelementptr inbounds %struct.servent, %struct.servent* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  store i8** %37, i8*** %6, align 8
  br label %38

38:                                               ; preds = %66, %34
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.servent*, %struct.servent** %4, align 8
  %46 = getelementptr inbounds %struct.servent, %struct.servent* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.servent* @getservbyname(i8* %44, i32 %47)
  store %struct.servent* %48, %struct.servent** %7, align 8
  %49 = load %struct.servent*, %struct.servent** %7, align 8
  %50 = call i64 @servent_test_correctness(%struct.servent* %49, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %71

53:                                               ; preds = %42
  %54 = load %struct.servent*, %struct.servent** %7, align 8
  %55 = load %struct.servent*, %struct.servent** %4, align 8
  %56 = call i64 @compare_servent(%struct.servent* %54, %struct.servent* %55, i32* null)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i8*, i8** %5, align 8
  %60 = bitcast i8* %59 to %struct.servent_test_data*
  %61 = load %struct.servent*, %struct.servent** %7, align 8
  %62 = call i64 @servent_check_ambiguity(%struct.servent_test_data* %60, %struct.servent* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %71

65:                                               ; preds = %58, %53
  br label %66

66:                                               ; preds = %65
  %67 = load i8**, i8*** %6, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %6, align 8
  br label %38

69:                                               ; preds = %38
  %70 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

71:                                               ; preds = %64, %52, %33, %21
  %72 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dump_servent(%struct.servent*) #1

declare dso_local %struct.servent* @getservbyname(i8*, i32) #1

declare dso_local i64 @servent_test_correctness(%struct.servent*, i32*) #1

declare dso_local i64 @compare_servent(%struct.servent*, %struct.servent*, i32*) #1

declare dso_local i64 @servent_check_ambiguity(%struct.servent_test_data*, %struct.servent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
