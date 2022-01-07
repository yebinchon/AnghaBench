; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getproto_test.c_protoent_test_getprotobyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getproto_test.c_protoent_test_getprotobyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i8*, i8** }
%struct.protoent_test_data = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"testing getprotobyname() with the following data:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"not ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.protoent*, i8*)* @protoent_test_getprotobyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protoent_test_getprotobyname(%struct.protoent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.protoent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.protoent*, align 8
  store %struct.protoent* %0, %struct.protoent** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.protoent*, %struct.protoent** %4, align 8
  %10 = call i32 @dump_protoent(%struct.protoent* %9)
  %11 = load %struct.protoent*, %struct.protoent** %4, align 8
  %12 = getelementptr inbounds %struct.protoent, %struct.protoent* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call %struct.protoent* @getprotobyname(i8* %13)
  store %struct.protoent* %14, %struct.protoent** %7, align 8
  %15 = load %struct.protoent*, %struct.protoent** %7, align 8
  %16 = call i64 @protoent_test_correctness(%struct.protoent* %15, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.protoent*, %struct.protoent** %7, align 8
  %21 = load %struct.protoent*, %struct.protoent** %4, align 8
  %22 = call i64 @compare_protoent(%struct.protoent* %20, %struct.protoent* %21, i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.protoent_test_data*
  %27 = load %struct.protoent*, %struct.protoent** %7, align 8
  %28 = call i64 @protoent_check_ambiguity(%struct.protoent_test_data* %26, %struct.protoent* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %65

31:                                               ; preds = %24, %19
  %32 = load %struct.protoent*, %struct.protoent** %4, align 8
  %33 = getelementptr inbounds %struct.protoent, %struct.protoent* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  store i8** %34, i8*** %6, align 8
  br label %35

35:                                               ; preds = %60, %31
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call %struct.protoent* @getprotobyname(i8* %41)
  store %struct.protoent* %42, %struct.protoent** %7, align 8
  %43 = load %struct.protoent*, %struct.protoent** %7, align 8
  %44 = call i64 @protoent_test_correctness(%struct.protoent* %43, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %65

47:                                               ; preds = %39
  %48 = load %struct.protoent*, %struct.protoent** %7, align 8
  %49 = load %struct.protoent*, %struct.protoent** %4, align 8
  %50 = call i64 @compare_protoent(%struct.protoent* %48, %struct.protoent* %49, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i8*, i8** %5, align 8
  %54 = bitcast i8* %53 to %struct.protoent_test_data*
  %55 = load %struct.protoent*, %struct.protoent** %7, align 8
  %56 = call i64 @protoent_check_ambiguity(%struct.protoent_test_data* %54, %struct.protoent* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %65

59:                                               ; preds = %52, %47
  br label %60

60:                                               ; preds = %59
  %61 = load i8**, i8*** %6, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %6, align 8
  br label %35

63:                                               ; preds = %35
  %64 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %67

65:                                               ; preds = %58, %46, %30, %18
  %66 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dump_protoent(%struct.protoent*) #1

declare dso_local %struct.protoent* @getprotobyname(i8*) #1

declare dso_local i64 @protoent_test_correctness(%struct.protoent*, i32*) #1

declare dso_local i64 @compare_protoent(%struct.protoent*, %struct.protoent*, i32*) #1

declare dso_local i64 @protoent_check_ambiguity(%struct.protoent_test_data*, %struct.protoent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
