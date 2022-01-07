; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mdmfs/extr_mdmfs.c_extract_ugid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mdmfs/extr_mdmfs.c_extract_ugid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtpt_info = type { i64, i64, i32, i32 }
%struct.passwd = type { i64 }
%struct.group = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid user: %s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid group: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mtpt_info*)* @extract_ugid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_ugid(i8* %0, %struct.mtpt_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mtpt_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca %struct.group*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mtpt_info* %1, %struct.mtpt_info** %4, align 8
  %13 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %14 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %13, i32 0, i32 0
  store i64* %14, i64** %11, align 8
  %15 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %16 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %15, i32 0, i32 1
  store i64* %16, i64** %12, align 8
  %17 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %18 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %17, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %20 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %19, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @strdup(i8* %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %7, align 8
  %28 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %2
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %34, %31, %2
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strtoul(i8* %47, i8** %10, i32 10)
  %49 = load i64*, i64** %11, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ULONG_MAX, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i8*, i8** %10, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = call %struct.passwd* @getpwnam(i8* %62)
  store %struct.passwd* %63, %struct.passwd** %8, align 8
  %64 = load %struct.passwd*, %struct.passwd** %8, align 8
  %65 = icmp eq %struct.passwd* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.passwd*, %struct.passwd** %8, align 8
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %11, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %56
  %75 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %76 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @strtoul(i8* %77, i8** %10, i32 10)
  %79 = load i64*, i64** %12, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i64*, i64** %12, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ULONG_MAX, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = call i32 (...) @usage()
  br label %86

86:                                               ; preds = %84, %74
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = load i8*, i8** %7, align 8
  %93 = call %struct.group* @getgrnam(i8* %92)
  store %struct.group* %93, %struct.group** %9, align 8
  %94 = load %struct.group*, %struct.group** %9, align 8
  %95 = icmp eq %struct.group* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.group*, %struct.group** %9, align 8
  %101 = getelementptr inbounds %struct.group, %struct.group* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %12, align 8
  store i64 %102, i64* %103, align 8
  br label %104

104:                                              ; preds = %99, %86
  %105 = load %struct.mtpt_info*, %struct.mtpt_info** %4, align 8
  %106 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %105, i32 0, i32 3
  store i32 1, i32* %106, align 4
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @free(i8* %107)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
