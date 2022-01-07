; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_local_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_local_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i32 }

@CPP_DEMANGLE_TRY_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_local_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_local_name(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca i64, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %5 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %6 = icmp eq %struct.cpp_demangle_data* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %115

8:                                                ; preds = %1
  %9 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %10 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %10, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %115

17:                                               ; preds = %8
  %18 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %19 = call i32 @cpp_demangle_read_encoding(%struct.cpp_demangle_data* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %115

22:                                               ; preds = %17
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %43, %22
  %24 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %25 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %115

28:                                               ; preds = %23
  %29 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %30 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 69
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %44

36:                                               ; preds = %28
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  %39 = load i32, i32* @CPP_DEMANGLE_TRY_LIMIT, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %115

43:                                               ; preds = %36
  br label %23

44:                                               ; preds = %35
  %45 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %46 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %46, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %115

53:                                               ; preds = %44
  %54 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %55 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %60 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %115

63:                                               ; preds = %58
  %64 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %65 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %53
  %67 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %68 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 115
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %75 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %75, align 8
  br label %89

78:                                               ; preds = %66
  %79 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %80 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %115

83:                                               ; preds = %78
  %84 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %85 = call i32 @cpp_demangle_read_name(%struct.cpp_demangle_data* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %115

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %73
  %90 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %91 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 95
  br i1 %95, label %96, label %114

96:                                               ; preds = %89
  %97 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %98 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %98, align 8
  br label %101

101:                                              ; preds = %108, %96
  %102 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %103 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i8, i8* %104, align 1
  %106 = call i64 @ELFTC_ISDIGIT(i8 signext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %110 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %110, align 8
  br label %101

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %89
  store i32 1, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %87, %82, %62, %52, %42, %27, %21, %16, %7
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @cpp_demangle_read_encoding(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, i32) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i32) #1

declare dso_local i32 @cpp_demangle_read_name(%struct.cpp_demangle_data*) #1

declare dso_local i64 @ELFTC_ISDIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
