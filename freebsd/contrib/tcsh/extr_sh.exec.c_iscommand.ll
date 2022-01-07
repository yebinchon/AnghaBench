; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_iscommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_iscommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i64** }

@STRpath = common dso_local global i32 0, align 4
@justabs = common dso_local global i64** null, align 8
@STRslash = common dso_local global i32 0, align 4
@havhash = common dso_local global i64 0, align 8
@xhash = common dso_local global i32 0, align 4
@STRdot = common dso_local global i32 0, align 4
@STRautorehash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @iscommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscommand(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64**, align 8
  %5 = alloca i64**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.varent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = call i32 @short2str(i64* %13)
  %15 = call i32 @any(i32 %14, i8 signext 47)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @STRpath, align 4
  %17 = call %struct.varent* @adrof(i32 %16)
  store %struct.varent* %17, %struct.varent** %7, align 8
  %18 = load %struct.varent*, %struct.varent** %7, align 8
  %19 = icmp eq %struct.varent* %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %1
  %21 = load %struct.varent*, %struct.varent** %7, align 8
  %22 = getelementptr inbounds %struct.varent, %struct.varent* %21, i32 0, i32 0
  %23 = load i64**, i64*** %22, align 8
  %24 = icmp eq i64** %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load %struct.varent*, %struct.varent** %7, align 8
  %27 = getelementptr inbounds %struct.varent, %struct.varent* %26, i32 0, i32 0
  %28 = load i64**, i64*** %27, align 8
  %29 = getelementptr inbounds i64*, i64** %28, i64 0
  %30 = load i64*, i64** %29, align 8
  %31 = icmp eq i64* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %25, %20, %1
  %36 = load i64**, i64*** @justabs, align 8
  store i64** %36, i64*** %4, align 8
  br label %41

37:                                               ; preds = %32
  %38 = load %struct.varent*, %struct.varent** %7, align 8
  %39 = getelementptr inbounds %struct.varent, %struct.varent* %38, i32 0, i32 0
  %40 = load i64**, i64*** %39, align 8
  store i64** %40, i64*** %4, align 8
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i32, i32* @STRslash, align 4
  %43 = load i64*, i64** %3, align 8
  %44 = call i64* @Strspl(i32 %42, i64* %43)
  store i64* %44, i64** %6, align 8
  %45 = load i64, i64* @havhash, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i64*, i64** %3, align 8
  %49 = call i32 @hashname(i64* %48)
  br label %51

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32 [ %49, %47 ], [ 0, %50 ]
  store i32 %52, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %137, %51
  %54 = load i64**, i64*** %4, align 8
  store i64** %54, i64*** %5, align 8
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %119, %53
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %55
  %59 = load i64**, i64*** %5, align 8
  %60 = getelementptr inbounds i64*, i64** %59, i64 0
  %61 = load i64*, i64** %60, align 8
  %62 = call i64 @ABSOLUTEP(i64* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load i64, i64* @havhash, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @hash(i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* @xhash, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @bit(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  br label %114

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %64, %58, %55
  %78 = load i64**, i64*** %5, align 8
  %79 = getelementptr inbounds i64*, i64** %78, i64 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %77
  %85 = load i64**, i64*** %5, align 8
  %86 = getelementptr inbounds i64*, i64** %85, i64 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* @STRdot, align 4
  %89 = call i64 @eq(i64* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84, %77
  %92 = load i64*, i64** %3, align 8
  %93 = call i64 @executable(i64* null, i64* %92, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i64*, i64** %6, align 8
  %97 = call i32 @xfree(i64* %96)
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %2, align 4
  br label %142

100:                                              ; preds = %91
  br label %113

101:                                              ; preds = %84
  %102 = load i64**, i64*** %5, align 8
  %103 = load i64*, i64** %102, align 8
  %104 = load i64*, i64** %6, align 8
  %105 = call i64 @executable(i64* %103, i64* %104, i32 0)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i64*, i64** %6, align 8
  %109 = call i32 @xfree(i64* %108)
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %2, align 4
  br label %142

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %100
  br label %114

114:                                              ; preds = %113, %75
  %115 = load i64**, i64*** %5, align 8
  %116 = getelementptr inbounds i64*, i64** %115, i32 1
  store i64** %116, i64*** %5, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %114
  %120 = load i64**, i64*** %5, align 8
  %121 = load i64*, i64** %120, align 8
  %122 = icmp ne i64* %121, null
  br i1 %122, label %55, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* @STRautorehash, align 4
  %125 = call %struct.varent* @adrof(i32 %124)
  %126 = icmp ne %struct.varent* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* @havhash, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i64**, i64*** %4, align 8
  %135 = load i64**, i64*** @justabs, align 8
  %136 = icmp ne i64** %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = call i32 @dohash(i32* null, i32* null)
  store i32 1, i32* %10, align 4
  br label %53

139:                                              ; preds = %133, %130, %127, %123
  %140 = load i64*, i64** %6, align 8
  %141 = call i32 @xfree(i64* %140)
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %139, %107, %95
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @any(i32, i8 signext) #1

declare dso_local i32 @short2str(i64*) #1

declare dso_local %struct.varent* @adrof(i32) #1

declare dso_local i64* @Strspl(i32, i64*) #1

declare dso_local i32 @hashname(i64*) #1

declare dso_local i64 @ABSOLUTEP(i64*) #1

declare dso_local i32 @hash(i32, i32) #1

declare dso_local i32 @bit(i32, i32) #1

declare dso_local i64 @eq(i64*, i32) #1

declare dso_local i64 @executable(i64*, i64*, i32) #1

declare dso_local i32 @xfree(i64*) #1

declare dso_local i32 @dohash(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
