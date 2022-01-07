; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_gettilde.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_gettilde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tildecache = type { i8*, i8*, i32 }

@tcache = common dso_local global %struct.tildecache* null, align 8
@TILINCR = common dso_local global i32 0, align 4
@tlength = common dso_local global i32 0, align 4
@tildecompare = common dso_local global i32 0, align 4
@tsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gettilde(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tildecache*, align 8
  %5 = alloca %struct.tildecache*, align 8
  %6 = alloca %struct.tildecache*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 43
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  store i8* null, i8** %2, align 8
  br label %125

19:                                               ; preds = %13
  %20 = load %struct.tildecache*, %struct.tildecache** @tcache, align 8
  %21 = icmp eq %struct.tildecache* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* @TILINCR, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 24
  %26 = trunc i64 %25 to i32
  %27 = call %struct.tildecache* @xmalloc(i32 %26)
  store %struct.tildecache* %27, %struct.tildecache** @tcache, align 8
  br label %28

28:                                               ; preds = %22, %19
  %29 = load %struct.tildecache*, %struct.tildecache** @tcache, align 8
  store %struct.tildecache* %29, %struct.tildecache** %4, align 8
  %30 = load %struct.tildecache*, %struct.tildecache** @tcache, align 8
  %31 = load i32, i32* @tlength, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %30, i64 %32
  store %struct.tildecache* %33, %struct.tildecache** %5, align 8
  br label %34

34:                                               ; preds = %77, %28
  %35 = load %struct.tildecache*, %struct.tildecache** %4, align 8
  %36 = load %struct.tildecache*, %struct.tildecache** %5, align 8
  %37 = icmp ult %struct.tildecache* %35, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %34
  %39 = load %struct.tildecache*, %struct.tildecache** %4, align 8
  %40 = load %struct.tildecache*, %struct.tildecache** %5, align 8
  %41 = load %struct.tildecache*, %struct.tildecache** %4, align 8
  %42 = ptrtoint %struct.tildecache* %40 to i64
  %43 = ptrtoint %struct.tildecache* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 24
  %46 = ashr i64 %45, 1
  %47 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %39, i64 %46
  store %struct.tildecache* %47, %struct.tildecache** %6, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load %struct.tildecache*, %struct.tildecache** %6, align 8
  %52 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %50, %55
  store i32 %56, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %38
  %59 = load i8*, i8** %3, align 8
  %60 = load %struct.tildecache*, %struct.tildecache** %6, align 8
  %61 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @Strcmp(i8* %59, i8* %62)
  store i32 %63, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.tildecache*, %struct.tildecache** %6, align 8
  %67 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %2, align 8
  br label %125

69:                                               ; preds = %58, %38
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load %struct.tildecache*, %struct.tildecache** %6, align 8
  store %struct.tildecache* %73, %struct.tildecache** %5, align 8
  br label %77

74:                                               ; preds = %69
  %75 = load %struct.tildecache*, %struct.tildecache** %6, align 8
  %76 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %75, i64 1
  store %struct.tildecache* %76, %struct.tildecache** %4, align 8
  br label %77

77:                                               ; preds = %74, %72
  br label %34

78:                                               ; preds = %34
  %79 = load i8*, i8** %3, align 8
  %80 = call i8* @gethomedir(i8* %79)
  store i8* %80, i8** %7, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i8* null, i8** %2, align 8
  br label %125

84:                                               ; preds = %78
  %85 = load i8*, i8** %3, align 8
  %86 = call i8* @Strsave(i8* %85)
  %87 = load %struct.tildecache*, %struct.tildecache** @tcache, align 8
  %88 = load i32, i32* @tlength, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %87, i64 %89
  %91 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %90, i32 0, i32 0
  store i8* %86, i8** %91, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.tildecache*, %struct.tildecache** @tcache, align 8
  %94 = load i32, i32* @tlength, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %93, i64 %95
  %97 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %96, i32 0, i32 1
  store i8* %92, i8** %97, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @Strlen(i8* %98)
  %100 = load %struct.tildecache*, %struct.tildecache** @tcache, align 8
  %101 = load i32, i32* @tlength, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @tlength, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %100, i64 %103
  %105 = getelementptr inbounds %struct.tildecache, %struct.tildecache* %104, i32 0, i32 2
  store i32 %99, i32* %105, align 8
  %106 = load %struct.tildecache*, %struct.tildecache** @tcache, align 8
  %107 = load i32, i32* @tlength, align 4
  %108 = load i32, i32* @tildecompare, align 4
  %109 = call i32 @qsort(%struct.tildecache* %106, i32 %107, i32 24, i32 %108)
  %110 = load i32, i32* @tlength, align 4
  %111 = load i32, i32* @tsize, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %84
  %114 = load i32, i32* @TILINCR, align 4
  %115 = load i32, i32* @tsize, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* @tsize, align 4
  %117 = load %struct.tildecache*, %struct.tildecache** @tcache, align 8
  %118 = load i32, i32* @tsize, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 24
  %121 = trunc i64 %120 to i32
  %122 = call %struct.tildecache* @xrealloc(%struct.tildecache* %117, i32 %121)
  store %struct.tildecache* %122, %struct.tildecache** @tcache, align 8
  br label %123

123:                                              ; preds = %113, %84
  %124 = load i8*, i8** %7, align 8
  store i8* %124, i8** %2, align 8
  br label %125

125:                                              ; preds = %123, %83, %65, %18
  %126 = load i8*, i8** %2, align 8
  ret i8* %126
}

declare dso_local %struct.tildecache* @xmalloc(i32) #1

declare dso_local i32 @Strcmp(i8*, i8*) #1

declare dso_local i8* @gethomedir(i8*) #1

declare dso_local i8* @Strsave(i8*) #1

declare dso_local i32 @Strlen(i8*) #1

declare dso_local i32 @qsort(%struct.tildecache*, i32, i32, i32) #1

declare dso_local %struct.tildecache* @xrealloc(%struct.tildecache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
