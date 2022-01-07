; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_find_nomatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_find_nomatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exact_info = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" on \00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"No bus found in nomatch string: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't allocate memory for strings\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Malformed NOMATCH string: '%s'\00", align 1
@root = common dso_local global i32 0, align 4
@find_exact_dev = common dso_local global i32 0, align 4
@DF_ATTACHED_ONCE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @find_nomatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_nomatch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.exact_info, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = getelementptr inbounds i8, i8* %12, i64 -4
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %24, %1
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strncmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %26, i8** %5, align 8
  br label %14

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  store i8* %36, i8** %3, align 8
  %37 = load i8*, i8** %5, align 8
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %3, align 8
  %39 = call i8* @strdup(i8* %38)
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %34
  %45 = load i8*, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %62, %44
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = icmp ugt i8* %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @isdigit(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i1 [ false, %51 ], [ %59, %55 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %64, i8** %5, align 8
  br label %51

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %2, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 63
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i8*, i8** %2, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %2, align 8
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i8*, i8** %2, align 8
  %77 = call i64 @strncmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i8*, i8** %2, align 8
  %81 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i8*, i8** %2, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  store i8* %84, i8** %4, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds %struct.exact_info, %struct.exact_info* %7, i32 0, i32 0
  store i8* %85, i8** %86, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds %struct.exact_info, %struct.exact_info* %7, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %struct.exact_info, %struct.exact_info* %7, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %89, align 8
  %90 = load i32, i32* @root, align 4
  %91 = load i32, i32* @find_exact_dev, align 4
  %92 = bitcast %struct.exact_info* %7 to i8*
  %93 = call i32 @devinfo_foreach_device_child(i32 %90, i32 %91, i8* %92)
  %94 = getelementptr inbounds %struct.exact_info, %struct.exact_info* %7, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = icmp ne %struct.TYPE_2__* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct.exact_info, %struct.exact_info* %7, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @DF_ATTACHED_ONCE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = call i32 @exit(i32 0) #3
  unreachable

107:                                              ; preds = %97, %82
  %108 = load i8*, i8** %3, align 8
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @search_hints(i8* %108, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  %111 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @devinfo_foreach_device_child(i32, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @search_hints(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
