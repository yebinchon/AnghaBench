; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dopopd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dopopd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directory = type { %struct.directory*, %struct.directory*, i32 }
%struct.command = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"plvn\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" [-|+<n>]\00", align 1
@printd = common dso_local global i32 0, align 4
@DIR_OLD = common dso_local global i32 0, align 4
@STRowd = common dso_local global i32 0, align 4
@dcwd = common dso_local global %struct.directory* null, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_TOOMANY = common dso_local global i32 0, align 4
@ERR_BADDIR = common dso_local global i32 0, align 4
@dhead = common dso_local global %struct.directory zeroinitializer, align 8
@ERR_EMPTY = common dso_local global i32 0, align 4
@ERR_SYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dopopd(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.directory*, align 8
  %7 = alloca %struct.directory*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  store %struct.directory* null, %struct.directory** %7, align 8
  %10 = call i32 @skipargs(i32*** %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* %8, align 4
  %11 = load %struct.command*, %struct.command** %4, align 8
  %12 = call i32 @USE(%struct.command* %11)
  store i32 1, i32* @printd, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @DIR_OLD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @STRowd, align 4
  %19 = call i32* @varval(i32 %18)
  br label %23

20:                                               ; preds = %2
  %21 = load i32**, i32*** %3, align 8
  %22 = load i32*, i32** %21, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32* [ %19, %17 ], [ %22, %20 ]
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load %struct.directory*, %struct.directory** @dcwd, align 8
  store %struct.directory* %28, %struct.directory** %6, align 8
  br label %55

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @DIR_OLD, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32**, i32*** %3, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @ERR_NAME, align 4
  %41 = load i32, i32* @ERR_TOOMANY, align 4
  %42 = or i32 %40, %41
  %43 = call i32 (i32, ...) @stderror(i32 %42)
  br label %122

44:                                               ; preds = %34, %29
  %45 = load i32*, i32** %5, align 8
  %46 = call %struct.directory* @dfind(i32* %45)
  store %struct.directory* %46, %struct.directory** %6, align 8
  %47 = icmp eq %struct.directory* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @ERR_NAME, align 4
  %50 = load i32, i32* @ERR_BADDIR, align 4
  %51 = or i32 %49, %50
  %52 = call i32 (i32, ...) @stderror(i32 %51)
  br label %53

53:                                               ; preds = %48, %44
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %27
  %56 = load %struct.directory*, %struct.directory** %6, align 8
  %57 = getelementptr inbounds %struct.directory, %struct.directory* %56, i32 0, i32 0
  %58 = load %struct.directory*, %struct.directory** %57, align 8
  %59 = icmp eq %struct.directory* %58, @dhead
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.directory*, %struct.directory** %6, align 8
  %62 = getelementptr inbounds %struct.directory, %struct.directory* %61, i32 0, i32 1
  %63 = load %struct.directory*, %struct.directory** %62, align 8
  %64 = icmp eq %struct.directory* %63, @dhead
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @ERR_NAME, align 4
  %67 = load i32, i32* @ERR_EMPTY, align 4
  %68 = or i32 %66, %67
  %69 = call i32 (i32, ...) @stderror(i32 %68)
  br label %70

70:                                               ; preds = %65, %60, %55
  %71 = load %struct.directory*, %struct.directory** %6, align 8
  %72 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %73 = icmp eq %struct.directory* %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.directory*, %struct.directory** %6, align 8
  %76 = getelementptr inbounds %struct.directory, %struct.directory* %75, i32 0, i32 0
  %77 = load %struct.directory*, %struct.directory** %76, align 8
  store %struct.directory* %77, %struct.directory** %7, align 8
  %78 = icmp eq %struct.directory* %77, @dhead
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load %struct.directory*, %struct.directory** getelementptr inbounds (%struct.directory, %struct.directory* @dhead, i32 0, i32 0), align 8
  store %struct.directory* %80, %struct.directory** %7, align 8
  br label %81

81:                                               ; preds = %79, %74
  %82 = load %struct.directory*, %struct.directory** %7, align 8
  %83 = getelementptr inbounds %struct.directory, %struct.directory* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @short2str(i32 %84)
  store i8* %85, i8** %9, align 8
  %86 = call i64 @chdir(i8* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @ERR_SYSTEM, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* @errno, align 4
  %92 = call i32 @strerror(i32 %91)
  %93 = call i32 (i32, ...) @stderror(i32 %89, i8* %90, i32 %92)
  br label %94

94:                                               ; preds = %88, %81
  br label %95

95:                                               ; preds = %94, %70
  %96 = load %struct.directory*, %struct.directory** %6, align 8
  %97 = getelementptr inbounds %struct.directory, %struct.directory* %96, i32 0, i32 1
  %98 = load %struct.directory*, %struct.directory** %97, align 8
  %99 = load %struct.directory*, %struct.directory** %6, align 8
  %100 = getelementptr inbounds %struct.directory, %struct.directory* %99, i32 0, i32 0
  %101 = load %struct.directory*, %struct.directory** %100, align 8
  %102 = getelementptr inbounds %struct.directory, %struct.directory* %101, i32 0, i32 1
  store %struct.directory* %98, %struct.directory** %102, align 8
  %103 = load %struct.directory*, %struct.directory** %6, align 8
  %104 = getelementptr inbounds %struct.directory, %struct.directory* %103, i32 0, i32 0
  %105 = load %struct.directory*, %struct.directory** %104, align 8
  %106 = load %struct.directory*, %struct.directory** %6, align 8
  %107 = getelementptr inbounds %struct.directory, %struct.directory* %106, i32 0, i32 1
  %108 = load %struct.directory*, %struct.directory** %107, align 8
  %109 = getelementptr inbounds %struct.directory, %struct.directory* %108, i32 0, i32 0
  store %struct.directory* %105, %struct.directory** %109, align 8
  %110 = load %struct.directory*, %struct.directory** %6, align 8
  %111 = call i32 @dfree(%struct.directory* %110)
  %112 = load %struct.directory*, %struct.directory** %6, align 8
  %113 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %114 = icmp eq %struct.directory* %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %95
  %116 = load %struct.directory*, %struct.directory** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @dnewcwd(%struct.directory* %116, i32 %117)
  br label %122

119:                                              ; preds = %95
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @printdirs(i32 %120)
  br label %122

122:                                              ; preds = %39, %119, %115
  ret void
}

declare dso_local i32 @skipargs(i32***, i8*, i8*) #1

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32* @varval(i32) #1

declare dso_local i32 @stderror(i32, ...) #1

declare dso_local %struct.directory* @dfind(i32*) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i8* @short2str(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @dfree(%struct.directory*) #1

declare dso_local i32 @dnewcwd(%struct.directory*, i32) #1

declare dso_local i32 @printdirs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
