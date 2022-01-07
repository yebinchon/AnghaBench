; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_ubik_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_ubik_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c" ubik call %s\00", align 1
@ubik_req = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"op#%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" syncsite %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" votestart\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" dbversion\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" tid\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" site\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" file\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" pos\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" length\00", align 1
@ubik_lock_types = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"type %d\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c" oldversion\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c" newversion\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" [|ubik]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ubik_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubik_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 4
  %9 = call i32 @EXTRACT_32BITS(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @ubik_req, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @tok2str(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i32*
  %16 = call i32 @ND_PRINT(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 8
  store i32* %18, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %119 [
    i32 10000, label %20
    i32 10003, label %45
    i32 20000, label %49
    i32 20001, label %49
    i32 20007, label %49
    i32 20008, label %49
    i32 20010, label %49
    i32 20002, label %53
    i32 20003, label %75
    i32 20005, label %85
    i32 20006, label %89
    i32 20009, label %99
    i32 20012, label %109
  ]

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ND_TCHECK2(i32 %23, i32 4)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @EXTRACT_32BITS(i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %34 = bitcast i8* %33 to i32*
  %35 = call i32 @ND_PRINT(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.5 to i32*))
  %38 = call i32 (...) @DATEOUT()
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.6 to i32*))
  %41 = call i32 (...) @UBIK_VERSIONOUT()
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.7 to i32*))
  %44 = call i32 (...) @UBIK_VERSIONOUT()
  br label %120

45:                                               ; preds = %2
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.8 to i32*))
  %48 = call i32 (...) @UINTOUT()
  br label %120

49:                                               ; preds = %2, %2, %2, %2, %2
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.7 to i32*))
  %52 = call i32 (...) @UBIK_VERSIONOUT()
  br label %120

53:                                               ; preds = %2
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.7 to i32*))
  %56 = call i32 (...) @UBIK_VERSIONOUT()
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.9 to i32*))
  %59 = call i32 (...) @INTOUT()
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.10 to i32*))
  %62 = call i32 (...) @INTOUT()
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.11 to i32*))
  %65 = call i32 (...) @INTOUT()
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @ND_TCHECK_32BITS(i32* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @EXTRACT_32BITS(i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %71, i32** %4, align 8
  %72 = load i32, i32* @ubik_lock_types, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @tok2str(i32 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %73)
  br label %120

75:                                               ; preds = %2
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.7 to i32*))
  %78 = call i32 (...) @UBIK_VERSIONOUT()
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.9 to i32*))
  %81 = call i32 (...) @INTOUT()
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.10 to i32*))
  %84 = call i32 (...) @INTOUT()
  br label %120

85:                                               ; preds = %2
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.9 to i32*))
  %88 = call i32 (...) @INTOUT()
  br label %120

89:                                               ; preds = %2
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.9 to i32*))
  %92 = call i32 (...) @INTOUT()
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.11 to i32*))
  %95 = call i32 (...) @INTOUT()
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.6 to i32*))
  %98 = call i32 (...) @UBIK_VERSIONOUT()
  br label %120

99:                                               ; preds = %2
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.7 to i32*))
  %102 = call i32 (...) @UBIK_VERSIONOUT()
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.9 to i32*))
  %105 = call i32 (...) @INTOUT()
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.11 to i32*))
  %108 = call i32 (...) @INTOUT()
  br label %120

109:                                              ; preds = %2
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.7 to i32*))
  %112 = call i32 (...) @UBIK_VERSIONOUT()
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.13 to i32*))
  %115 = call i32 (...) @UBIK_VERSIONOUT()
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @ND_PRINT(i32* bitcast ([12 x i8]* @.str.14 to i32*))
  %118 = call i32 (...) @UBIK_VERSIONOUT()
  br label %120

119:                                              ; preds = %2
  br label %120

120:                                              ; preds = %119, %109, %99, %89, %85, %75, %53, %49, %45, %20
  br label %124

121:                                              ; No predecessors!
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.15 to i32*))
  br label %124

124:                                              ; preds = %121, %120
  ret void
}

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @DATEOUT(...) #1

declare dso_local i32 @UBIK_VERSIONOUT(...) #1

declare dso_local i32 @UINTOUT(...) #1

declare dso_local i32 @INTOUT(...) #1

declare dso_local i32 @ND_TCHECK_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
