; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_changetype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_changetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.types = type { i64, i32, i32 }

@verbose = common dso_local global i32 0, align 4
@TYPE_I = common dso_local global i32 0, align 4
@curtype = common dso_local global i32 0, align 4
@ftp_debug = common dso_local global i64 0, align 8
@types = common dso_local global %struct.types* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"changetype: unknown type %d\00", align 1
@TYPE_L = common dso_local global i32 0, align 4
@bytename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"TYPE %s %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TYPE %s\00", align 1
@COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @changetype(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.types*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @verbose, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @TYPE_I, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @curtype, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %80

18:                                               ; preds = %13
  %19 = load i64, i64* @ftp_debug, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* @verbose, align 4
  br label %25

25:                                               ; preds = %24, %21, %18
  %26 = load %struct.types*, %struct.types** @types, align 8
  store %struct.types* %26, %struct.types** %5, align 8
  br label %27

27:                                               ; preds = %40, %25
  %28 = load %struct.types*, %struct.types** %5, align 8
  %29 = getelementptr inbounds %struct.types, %struct.types* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.types*, %struct.types** %5, align 8
  %35 = getelementptr inbounds %struct.types, %struct.types* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %43

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.types*, %struct.types** %5, align 8
  %42 = getelementptr inbounds %struct.types, %struct.types* %41, i32 1
  store %struct.types* %42, %struct.types** %5, align 8
  br label %27

43:                                               ; preds = %38, %27
  %44 = load %struct.types*, %struct.types** %5, align 8
  %45 = getelementptr inbounds %struct.types, %struct.types* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @TYPE_L, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i8*, i8** @bytename, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.types*, %struct.types** %5, align 8
  %63 = getelementptr inbounds %struct.types, %struct.types* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** @bytename, align 8
  %66 = call i32 (i8*, i32, ...) @command(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %65)
  store i32 %66, i32* %6, align 4
  br label %72

67:                                               ; preds = %55, %51
  %68 = load %struct.types*, %struct.types** %5, align 8
  %69 = getelementptr inbounds %struct.types, %struct.types* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, ...) @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %61
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @COMPLETE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %3, align 4
  store i32 %77, i32* @curtype, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* @verbose, align 4
  br label %80

80:                                               ; preds = %78, %17
  ret void
}

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @command(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
