; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dochngd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dochngd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.directory*, %struct.directory* }
%struct.directory = type { i64*, %struct.directory*, %struct.directory*, i64 }
%struct.command = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"plvn\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[-|<dir>]\00", align 1
@printd = common dso_local global i32 0, align 4
@DIR_OLD = common dso_local global i32 0, align 4
@STRowd = common dso_local global i32 0, align 4
@cdtohome = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_TOOFEW = common dso_local global i32 0, align 4
@STRhome = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i64* null, align 8
@ERR_NOHOMEDIR = common dso_local global i32 0, align 4
@ERR_CANTCHANGE = common dso_local global i32 0, align 4
@ERR_TOOMANY = common dso_local global i32 0, align 4
@ERR_SYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@dcwd = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dochngd(i64** %0, %struct.command* %1) #0 {
  %3 = alloca i64**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.directory*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i64** %0, i64*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %9 = call i32 @skipargs(i64*** %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %9, i32* %7, align 4
  %10 = load %struct.command*, %struct.command** %4, align 8
  %11 = call i32 @USE(%struct.command* %10)
  store i32 0, i32* @printd, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DIR_OLD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @STRowd, align 4
  %18 = call i64* @varval(i32 %17)
  br label %22

19:                                               ; preds = %2
  %20 = load i64**, i64*** %3, align 8
  %21 = load i64*, i64** %20, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i64* [ %18, %16 ], [ %21, %19 ]
  store i64* %23, i64** %5, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load i32, i32* @cdtohome, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @ERR_NAME, align 4
  %31 = load i32, i32* @ERR_TOOFEW, align 4
  %32 = or i32 %30, %31
  %33 = call i32 (i32, ...) @stderror(i32 %32)
  br label %49

34:                                               ; preds = %26
  %35 = load i32, i32* @STRhome, align 4
  %36 = call i64* @varval(i32 %35)
  store i64* %36, i64** %5, align 8
  %37 = load i64*, i64** @STRNULL, align 8
  %38 = icmp eq i64* %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %34
  %44 = load i32, i32* @ERR_NAME, align 4
  %45 = load i32, i32* @ERR_NOHOMEDIR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 (i32, ...) @stderror(i32 %46)
  br label %48

48:                                               ; preds = %43, %39
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i64*, i64** %5, align 8
  %51 = call i8* @short2str(i64* %50)
  %52 = call i64 @chdir(i8* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @ERR_NAME, align 4
  %56 = load i32, i32* @ERR_CANTCHANGE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 (i32, ...) @stderror(i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i64*, i64** %5, align 8
  %61 = call i64* @Strsave(i64* %60)
  store i64* %61, i64** %5, align 8
  br label %125

62:                                               ; preds = %22
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @DIR_OLD, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i64**, i64*** %3, align 8
  %69 = getelementptr inbounds i64*, i64** %68, i64 1
  %70 = load i64*, i64** %69, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* @ERR_NAME, align 4
  %74 = load i32, i32* @ERR_TOOMANY, align 4
  %75 = or i32 %73, %74
  %76 = call i32 (i32, ...) @stderror(i32 %75)
  br label %157

77:                                               ; preds = %67, %62
  %78 = load i64*, i64** %5, align 8
  %79 = call %struct.directory* @dfind(i64* %78)
  store %struct.directory* %79, %struct.directory** %6, align 8
  %80 = icmp ne %struct.directory* %79, null
  br i1 %80, label %81, label %114

81:                                               ; preds = %77
  store i32 1, i32* @printd, align 4
  %82 = load %struct.directory*, %struct.directory** %6, align 8
  %83 = getelementptr inbounds %struct.directory, %struct.directory* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = call i8* @short2str(i64* %84)
  store i8* %85, i8** %8, align 8
  %86 = call i64 @chdir(i8* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @ERR_SYSTEM, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* @errno, align 4
  %92 = call i32 @strerror(i32 %91)
  %93 = call i32 (i32, ...) @stderror(i32 %89, i8* %90, i32 %92)
  br label %94

94:                                               ; preds = %88, %81
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dcwd, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load %struct.directory*, %struct.directory** %96, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dcwd, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load %struct.directory*, %struct.directory** %99, align 8
  %101 = getelementptr inbounds %struct.directory, %struct.directory* %100, i32 0, i32 2
  store %struct.directory* %97, %struct.directory** %101, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dcwd, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load %struct.directory*, %struct.directory** %103, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dcwd, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load %struct.directory*, %struct.directory** %106, align 8
  %108 = getelementptr inbounds %struct.directory, %struct.directory* %107, i32 0, i32 1
  store %struct.directory* %104, %struct.directory** %108, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dcwd, align 8
  %110 = call i32 @dfree(%struct.TYPE_3__* %109)
  %111 = load %struct.directory*, %struct.directory** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @dnewcwd(%struct.directory* %111, i32 %112)
  br label %157

114:                                              ; preds = %77
  %115 = load i64*, i64** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @DIR_OLD, align 4
  %118 = and i32 %116, %117
  %119 = call i64* @dfollow(i64* %115, i32 %118)
  store i64* %119, i64** %5, align 8
  %120 = icmp eq i64* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %157

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124, %59
  %126 = call %struct.directory* @xcalloc(i32 32, i32 1)
  store %struct.directory* %126, %struct.directory** %6, align 8
  %127 = load i64*, i64** %5, align 8
  %128 = load %struct.directory*, %struct.directory** %6, align 8
  %129 = getelementptr inbounds %struct.directory, %struct.directory* %128, i32 0, i32 0
  store i64* %127, i64** %129, align 8
  %130 = load %struct.directory*, %struct.directory** %6, align 8
  %131 = getelementptr inbounds %struct.directory, %struct.directory* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dcwd, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load %struct.directory*, %struct.directory** %133, align 8
  %135 = load %struct.directory*, %struct.directory** %6, align 8
  %136 = getelementptr inbounds %struct.directory, %struct.directory* %135, i32 0, i32 2
  store %struct.directory* %134, %struct.directory** %136, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dcwd, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load %struct.directory*, %struct.directory** %138, align 8
  %140 = load %struct.directory*, %struct.directory** %6, align 8
  %141 = getelementptr inbounds %struct.directory, %struct.directory* %140, i32 0, i32 1
  store %struct.directory* %139, %struct.directory** %141, align 8
  %142 = load %struct.directory*, %struct.directory** %6, align 8
  %143 = load %struct.directory*, %struct.directory** %6, align 8
  %144 = getelementptr inbounds %struct.directory, %struct.directory* %143, i32 0, i32 1
  %145 = load %struct.directory*, %struct.directory** %144, align 8
  %146 = getelementptr inbounds %struct.directory, %struct.directory* %145, i32 0, i32 2
  store %struct.directory* %142, %struct.directory** %146, align 8
  %147 = load %struct.directory*, %struct.directory** %6, align 8
  %148 = load %struct.directory*, %struct.directory** %6, align 8
  %149 = getelementptr inbounds %struct.directory, %struct.directory* %148, i32 0, i32 2
  %150 = load %struct.directory*, %struct.directory** %149, align 8
  %151 = getelementptr inbounds %struct.directory, %struct.directory* %150, i32 0, i32 1
  store %struct.directory* %147, %struct.directory** %151, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dcwd, align 8
  %153 = call i32 @dfree(%struct.TYPE_3__* %152)
  %154 = load %struct.directory*, %struct.directory** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @dnewcwd(%struct.directory* %154, i32 %155)
  br label %157

157:                                              ; preds = %125, %121, %94, %72
  ret void
}

declare dso_local i32 @skipargs(i64***, i8*, i8*) #1

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i64* @varval(i32) #1

declare dso_local i32 @stderror(i32, ...) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i8* @short2str(i64*) #1

declare dso_local i64* @Strsave(i64*) #1

declare dso_local %struct.directory* @dfind(i64*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @dfree(%struct.TYPE_3__*) #1

declare dso_local i32 @dnewcwd(%struct.directory*, i32) #1

declare dso_local i64* @dfollow(i64*, i32) #1

declare dso_local %struct.directory* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
