; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcompat/4.3/extr_rexec.c_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcompat/4.3/extr_rexec.c_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toktab = type { i32, i64 }

@cfile = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@tokval = common dso_local global i64* null, align 8
@toktab = common dso_local global %struct.toktab* null, align 8
@ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @token() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.toktab*, align 8
  %5 = load i32, i32* @cfile, align 4
  %6 = call i64 @feof(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @cfile, align 4
  %10 = call i64 @ferror(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %0
  store i32 0, i32* %1, align 4
  br label %136

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %35, %13
  %15 = load i32, i32* @cfile, align 4
  %16 = call i32 @getc(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @EOF, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 44
  br label %31

31:                                               ; preds = %28, %25, %22, %19
  %32 = phi i1 [ true, %25 ], [ true, %22 ], [ true, %19 ], [ %30, %28 ]
  br label %33

33:                                               ; preds = %31, %14
  %34 = phi i1 [ false, %14 ], [ %32, %31 ]
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  br label %14

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @EOF, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %136

41:                                               ; preds = %36
  %42 = load i64*, i64** @tokval, align 8
  %43 = bitcast i64* %42 to i8*
  store i8* %43, i8** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 34
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* @cfile, align 4
  %49 = call i32 @getc(i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @EOF, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 34
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi i1 [ false, %47 ], [ %54, %52 ]
  br i1 %56, label %57, label %68

57:                                               ; preds = %55
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 92
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @cfile, align 4
  %62 = call i32 @getc(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %3, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %2, align 8
  store i8 %65, i8* %66, align 1
  br label %47

68:                                               ; preds = %55
  br label %105

69:                                               ; preds = %41
  %70 = load i32, i32* %3, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %2, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %2, align 8
  store i8 %71, i8* %72, align 1
  br label %74

74:                                               ; preds = %99, %69
  %75 = load i32, i32* @cfile, align 4
  %76 = call i32 @getc(i32 %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @EOF, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, 10
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 9
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 32
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 44
  br label %91

91:                                               ; preds = %88, %85, %82, %79, %74
  %92 = phi i1 [ false, %85 ], [ false, %82 ], [ false, %79 ], [ false, %74 ], [ %90, %88 ]
  br i1 %92, label %93, label %104

93:                                               ; preds = %91
  %94 = load i32, i32* %3, align 4
  %95 = icmp eq i32 %94, 92
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @cfile, align 4
  %98 = call i32 @getc(i32 %97)
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %3, align 4
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %2, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %2, align 8
  store i8 %101, i8* %102, align 1
  br label %74

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %68
  %106 = load i8*, i8** %2, align 8
  store i8 0, i8* %106, align 1
  %107 = load i64*, i64** @tokval, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 0, i32* %1, align 4
  br label %136

112:                                              ; preds = %105
  %113 = load %struct.toktab*, %struct.toktab** @toktab, align 8
  store %struct.toktab* %113, %struct.toktab** %4, align 8
  br label %114

114:                                              ; preds = %131, %112
  %115 = load %struct.toktab*, %struct.toktab** %4, align 8
  %116 = getelementptr inbounds %struct.toktab, %struct.toktab* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load %struct.toktab*, %struct.toktab** %4, align 8
  %121 = getelementptr inbounds %struct.toktab, %struct.toktab* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** @tokval, align 8
  %124 = call i32 @strcmp(i64 %122, i64* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %119
  %127 = load %struct.toktab*, %struct.toktab** %4, align 8
  %128 = getelementptr inbounds %struct.toktab, %struct.toktab* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %1, align 4
  br label %136

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.toktab*, %struct.toktab** %4, align 8
  %133 = getelementptr inbounds %struct.toktab, %struct.toktab* %132, i32 1
  store %struct.toktab* %133, %struct.toktab** %4, align 8
  br label %114

134:                                              ; preds = %114
  %135 = load i32, i32* @ID, align 4
  store i32 %135, i32* %1, align 4
  br label %136

136:                                              ; preds = %134, %126, %111, %40, %12
  %137 = load i32, i32* %1, align 4
  ret i32 %137
}

declare dso_local i64 @feof(i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @strcmp(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
