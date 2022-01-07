; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_optr.c_dump_getfstab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_optr.c_dump_getfstab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstab = type { i32, i32 }
%struct.pfstab = type { %struct.fstab* }

@.str = private unnamed_addr constant [46 x i8] c"Can't open %s for dump table information: %s\0A\00", align 1
@_PATH_FSTAB = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FSTAB_RW = common dso_local global i8* null, align 8
@FSTAB_RO = common dso_local global i8* null, align 8
@FSTAB_RQ = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@table = common dso_local global i32 0, align 4
@pf_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_getfstab() #0 {
  %1 = alloca %struct.fstab*, align 8
  %2 = alloca %struct.pfstab*, align 8
  %3 = call i64 (...) @setfsent()
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @_PATH_FSTAB, align 4
  %7 = load i32, i32* @errno, align 4
  %8 = call i32 @strerror(i32 %7)
  %9 = call i32 @msg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8)
  br label %61

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %52, %41, %10
  %12 = call %struct.fstab* (...) @getfsent()
  store %struct.fstab* %12, %struct.fstab** %1, align 8
  %13 = icmp ne %struct.fstab* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %11
  %15 = load %struct.fstab*, %struct.fstab** %1, align 8
  %16 = getelementptr inbounds %struct.fstab, %struct.fstab* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** @FSTAB_RW, align 8
  %19 = call i64 @strcmp(i32 %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.fstab*, %struct.fstab** %1, align 8
  %23 = getelementptr inbounds %struct.fstab, %struct.fstab* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** @FSTAB_RO, align 8
  %26 = call i64 @strcmp(i32 %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.fstab*, %struct.fstab** %1, align 8
  %30 = getelementptr inbounds %struct.fstab, %struct.fstab* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** @FSTAB_RQ, align 8
  %33 = call i64 @strcmp(i32 %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28, %21, %14
  %36 = load %struct.fstab*, %struct.fstab** %1, align 8
  %37 = getelementptr inbounds %struct.fstab, %struct.fstab* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strcmp(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %28
  br label %11

42:                                               ; preds = %35
  %43 = load %struct.fstab*, %struct.fstab** %1, align 8
  %44 = call %struct.fstab* @allocfsent(%struct.fstab* %43)
  store %struct.fstab* %44, %struct.fstab** %1, align 8
  %45 = call i64 @malloc(i32 8)
  %46 = inttoptr i64 %45 to %struct.pfstab*
  store %struct.pfstab* %46, %struct.pfstab** %2, align 8
  %47 = icmp eq %struct.pfstab* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @strerror(i32 %49)
  %51 = call i32 @quit(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %42
  %53 = load %struct.fstab*, %struct.fstab** %1, align 8
  %54 = load %struct.pfstab*, %struct.pfstab** %2, align 8
  %55 = getelementptr inbounds %struct.pfstab, %struct.pfstab* %54, i32 0, i32 0
  store %struct.fstab* %53, %struct.fstab** %55, align 8
  %56 = load %struct.pfstab*, %struct.pfstab** %2, align 8
  %57 = load i32, i32* @pf_list, align 4
  %58 = call i32 @SLIST_INSERT_HEAD(i32* @table, %struct.pfstab* %56, i32 %57)
  br label %11

59:                                               ; preds = %11
  %60 = call i32 (...) @endfsent()
  br label %61

61:                                               ; preds = %59, %5
  ret void
}

declare dso_local i64 @setfsent(...) #1

declare dso_local i32 @msg(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.fstab* @getfsent(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.fstab* @allocfsent(%struct.fstab*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @quit(i8*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.pfstab*, i32) #1

declare dso_local i32 @endfsent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
