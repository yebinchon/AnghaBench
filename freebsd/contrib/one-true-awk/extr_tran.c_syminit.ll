; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_syminit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_syminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@NUM = common dso_local global i32 0, align 4
@STR = common dso_local global i32 0, align 4
@CON = common dso_local global i32 0, align 4
@DONTFREE = common dso_local global i32 0, align 4
@symtab = common dso_local global i64 0, align 8
@literal0 = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"$zero&null\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nullloc = common dso_local global %struct.TYPE_16__* null, align 8
@CCON = common dso_local global i32 0, align 4
@nullnode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"FS\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@fsloc = common dso_local global %struct.TYPE_16__* null, align 8
@FS = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"RS\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@rsloc = common dso_local global %struct.TYPE_16__* null, align 8
@RS = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"OFS\00", align 1
@ofsloc = common dso_local global %struct.TYPE_16__* null, align 8
@OFS = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"ORS\00", align 1
@orsloc = common dso_local global %struct.TYPE_16__* null, align 8
@ORS = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"OFMT\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%.6g\00", align 1
@OFMT = common dso_local global i8** null, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"CONVFMT\00", align 1
@CONVFMT = common dso_local global i8** null, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"FILENAME\00", align 1
@FILENAME = common dso_local global i8** null, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"NF\00", align 1
@nfloc = common dso_local global %struct.TYPE_16__* null, align 8
@NF = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"NR\00", align 1
@nrloc = common dso_local global %struct.TYPE_16__* null, align 8
@NR = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"FNR\00", align 1
@fnrloc = common dso_local global %struct.TYPE_16__* null, align 8
@FNR = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"SUBSEP\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\1C\00", align 1
@subseploc = common dso_local global %struct.TYPE_16__* null, align 8
@SUBSEP = common dso_local global i8** null, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"RSTART\00", align 1
@rstartloc = common dso_local global %struct.TYPE_16__* null, align 8
@RSTART = common dso_local global i32* null, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"RLENGTH\00", align 1
@rlengthloc = common dso_local global %struct.TYPE_16__* null, align 8
@RLENGTH = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"SYMTAB\00", align 1
@ARR = common dso_local global i32 0, align 4
@symtabloc = common dso_local global %struct.TYPE_16__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syminit() #0 {
  %1 = load i32, i32* @NUM, align 4
  %2 = load i32, i32* @STR, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @CON, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @DONTFREE, align 4
  %7 = or i32 %5, %6
  %8 = load i64, i64* @symtab, align 8
  %9 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), double 0.000000e+00, i32 %7, i64 %8)
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** @literal0, align 8
  %10 = load i32, i32* @NUM, align 4
  %11 = load i32, i32* @STR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CON, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DONTFREE, align 4
  %16 = or i32 %14, %15
  %17 = load i64, i64* @symtab, align 8
  %18 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), double 0.000000e+00, i32 %16, i64 %17)
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** @nullloc, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** @nullloc, align 8
  %20 = load i32, i32* @CCON, align 4
  %21 = call i32 @celltonode(%struct.TYPE_16__* %19, i32 %20)
  store i32 %21, i32* @nullnode, align 4
  %22 = load i32, i32* @STR, align 4
  %23 = load i32, i32* @DONTFREE, align 4
  %24 = or i32 %22, %23
  %25 = load i64, i64* @symtab, align 8
  %26 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), double 0.000000e+00, i32 %24, i64 %25)
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** @fsloc, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fsloc, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i8** %28, i8*** @FS, align 8
  %29 = load i32, i32* @STR, align 4
  %30 = load i32, i32* @DONTFREE, align 4
  %31 = or i32 %29, %30
  %32 = load i64, i64* @symtab, align 8
  %33 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), double 0.000000e+00, i32 %31, i64 %32)
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** @rsloc, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rsloc, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  store i8** %35, i8*** @RS, align 8
  %36 = load i32, i32* @STR, align 4
  %37 = load i32, i32* @DONTFREE, align 4
  %38 = or i32 %36, %37
  %39 = load i64, i64* @symtab, align 8
  %40 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), double 0.000000e+00, i32 %38, i64 %39)
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** @ofsloc, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ofsloc, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i8** %42, i8*** @OFS, align 8
  %43 = load i32, i32* @STR, align 4
  %44 = load i32, i32* @DONTFREE, align 4
  %45 = or i32 %43, %44
  %46 = load i64, i64* @symtab, align 8
  %47 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), double 0.000000e+00, i32 %45, i64 %46)
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** @orsloc, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** @orsloc, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  store i8** %49, i8*** @ORS, align 8
  %50 = load i32, i32* @STR, align 4
  %51 = load i32, i32* @DONTFREE, align 4
  %52 = or i32 %50, %51
  %53 = load i64, i64* @symtab, align 8
  %54 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), double 0.000000e+00, i32 %52, i64 %53)
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  store i8** %55, i8*** @OFMT, align 8
  %56 = load i32, i32* @STR, align 4
  %57 = load i32, i32* @DONTFREE, align 4
  %58 = or i32 %56, %57
  %59 = load i64, i64* @symtab, align 8
  %60 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), double 0.000000e+00, i32 %58, i64 %59)
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  store i8** %61, i8*** @CONVFMT, align 8
  %62 = load i32, i32* @STR, align 4
  %63 = load i32, i32* @DONTFREE, align 4
  %64 = or i32 %62, %63
  %65 = load i64, i64* @symtab, align 8
  %66 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), double 0.000000e+00, i32 %64, i64 %65)
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i8** %67, i8*** @FILENAME, align 8
  %68 = load i32, i32* @NUM, align 4
  %69 = load i64, i64* @symtab, align 8
  %70 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), double 0.000000e+00, i32 %68, i64 %69)
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** @nfloc, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** @nfloc, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  store i32* %72, i32** @NF, align 8
  %73 = load i32, i32* @NUM, align 4
  %74 = load i64, i64* @symtab, align 8
  %75 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), double 0.000000e+00, i32 %73, i64 %74)
  store %struct.TYPE_16__* %75, %struct.TYPE_16__** @nrloc, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** @nrloc, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  store i32* %77, i32** @NR, align 8
  %78 = load i32, i32* @NUM, align 4
  %79 = load i64, i64* @symtab, align 8
  %80 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), double 0.000000e+00, i32 %78, i64 %79)
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** @fnrloc, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** @fnrloc, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  store i32* %82, i32** @FNR, align 8
  %83 = load i32, i32* @STR, align 4
  %84 = load i32, i32* @DONTFREE, align 4
  %85 = or i32 %83, %84
  %86 = load i64, i64* @symtab, align 8
  %87 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), double 0.000000e+00, i32 %85, i64 %86)
  store %struct.TYPE_16__* %87, %struct.TYPE_16__** @subseploc, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** @subseploc, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  store i8** %89, i8*** @SUBSEP, align 8
  %90 = load i32, i32* @NUM, align 4
  %91 = load i64, i64* @symtab, align 8
  %92 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), double 0.000000e+00, i32 %90, i64 %91)
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** @rstartloc, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rstartloc, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  store i32* %94, i32** @RSTART, align 8
  %95 = load i32, i32* @NUM, align 4
  %96 = load i64, i64* @symtab, align 8
  %97 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), double 0.000000e+00, i32 %95, i64 %96)
  store %struct.TYPE_16__* %97, %struct.TYPE_16__** @rlengthloc, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rlengthloc, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  store i32* %99, i32** @RLENGTH, align 8
  %100 = load i32, i32* @ARR, align 4
  %101 = load i64, i64* @symtab, align 8
  %102 = call %struct.TYPE_16__* @setsymtab(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), double 0.000000e+00, i32 %100, i64 %101)
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** @symtabloc, align 8
  %103 = load i64, i64* @symtab, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** @symtabloc, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  ret void
}

declare dso_local %struct.TYPE_16__* @setsymtab(i8*, i8*, double, i32, i64) #1

declare dso_local i32 @celltonode(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
