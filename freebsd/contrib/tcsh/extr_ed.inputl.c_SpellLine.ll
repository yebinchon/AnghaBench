; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.inputl.c_SpellLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.inputl.c_SpellLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LastChar = common dso_local global i8* null, align 8
@Cursor = common dso_local global i8* null, align 8
@InputBuf = common dso_local global i8* null, align 8
@SPELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @SpellLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SpellLine(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i8*, i8** @LastChar, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i8*, i8** @Cursor, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** @InputBuf, align 8
  store i8* %10, i8** %5, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %132, %1
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @ismetahash(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @iscmdmeta(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ true, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %12

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** @Cursor, align 8
  br label %29

29:                                               ; preds = %62, %27
  %30 = load i8*, i8** @Cursor, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load i8*, i8** @Cursor, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i8*, i8** @Cursor, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 92
  br i1 %43, label %57, label %44

44:                                               ; preds = %38, %34
  %45 = load i8*, i8** @Cursor, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @ismetahash(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** @Cursor, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @iscmdmeta(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %49, %44
  %56 = phi i1 [ false, %44 ], [ %54, %49 ]
  br label %57

57:                                               ; preds = %55, %38
  %58 = phi i1 [ true, %38 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %29
  %60 = phi i1 [ false, %29 ], [ %58, %57 ]
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** @Cursor, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** @Cursor, align 8
  br label %29

65:                                               ; preds = %59
  %66 = load i8*, i8** @Cursor, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load i8*, i8** @LastChar, align 8
  store i8* %71, i8** @Cursor, align 8
  %72 = load i8*, i8** @LastChar, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i8*, i8** @Cursor, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 -1
  store i8* %79, i8** @Cursor, align 8
  br label %80

80:                                               ; preds = %77, %70
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %65
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @MISMATCH(i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %130, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %2, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i8*, i8** %5, align 8
  %91 = load i8*, i8** @InputBuf, align 8
  %92 = call i64 @starting_a_command(i8* %90, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %130

94:                                               ; preds = %89, %86
  %95 = load i8*, i8** @InputBuf, align 8
  %96 = load i8*, i8** @Cursor, align 8
  %97 = load i8*, i8** @InputBuf, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @SPELL, align 4
  %103 = call i32 @tenematch(i8* %95, i32 %101, i32 %102)
  switch i32 %103, label %110 [
    i32 1, label %104
    i32 -1, label %105
  ]

104:                                              ; preds = %94
  store i32 1, i32* %4, align 4
  br label %111

105:                                              ; preds = %94
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i32 -1, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %105
  br label %111

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %109, %104
  %112 = load i8*, i8** @LastChar, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = icmp ne i8* %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = load i8*, i8** %5, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = icmp ult i8* %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load i8*, i8** @LastChar, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8* %126, i8** %6, align 8
  br label %127

127:                                              ; preds = %119, %115
  %128 = load i8*, i8** @LastChar, align 8
  store i8* %128, i8** %7, align 8
  br label %129

129:                                              ; preds = %127, %111
  br label %130

130:                                              ; preds = %129, %89, %81
  %131 = load i8*, i8** @Cursor, align 8
  store i8* %131, i8** %5, align 8
  br label %132

132:                                              ; preds = %130
  %133 = load i32, i32* %3, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %11, label %135

135:                                              ; preds = %132
  %136 = load i8*, i8** %6, align 8
  store i8* %136, i8** @Cursor, align 8
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i64 @ismetahash(i8 signext) #1

declare dso_local i64 @iscmdmeta(i8 signext) #1

declare dso_local i32 @MISMATCH(i8 signext) #1

declare dso_local i64 @starting_a_command(i8*, i8*) #1

declare dso_local i32 @tenematch(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
