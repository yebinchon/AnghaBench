; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_close_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_close_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"</exec_args>\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"</exec_env>\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"</file>\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"</group>\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"</ip_address>\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"</ip_port>\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"</opaque>\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"</path>\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"</text>\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"</arbitrary>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @close_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_tag(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %126 [
    i32 159, label %6
    i32 158, label %9
    i32 157, label %12
    i32 156, label %15
    i32 167, label %18
    i32 166, label %21
    i32 165, label %24
    i32 164, label %27
    i32 160, label %30
    i32 162, label %33
    i32 161, label %36
    i32 147, label %39
    i32 149, label %42
    i32 155, label %45
    i32 154, label %48
    i32 153, label %51
    i32 152, label %54
    i32 151, label %57
    i32 150, label %60
    i32 148, label %63
    i32 146, label %66
    i32 145, label %69
    i32 144, label %72
    i32 143, label %75
    i32 142, label %78
    i32 141, label %81
    i32 140, label %84
    i32 139, label %87
    i32 138, label %90
    i32 135, label %93
    i32 134, label %96
    i32 136, label %99
    i32 133, label %102
    i32 131, label %105
    i32 132, label %108
    i32 130, label %111
    i32 129, label %114
    i32 137, label %117
    i32 163, label %120
    i32 128, label %123
  ]

6:                                                ; preds = %2
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @fprintf(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %126

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @fprintf(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %126

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @fprintf(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %126

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @fprintf(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %126

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @fprintf(i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @fprintf(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @fprintf(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @fprintf(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

30:                                               ; preds = %2
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @fprintf(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

33:                                               ; preds = %2
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @fprintf(i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %126

36:                                               ; preds = %2
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @fprintf(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %126

39:                                               ; preds = %2
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @fprintf(i32* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %126

42:                                               ; preds = %2
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @fprintf(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %126

45:                                               ; preds = %2
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @fprintf(i32* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %126

48:                                               ; preds = %2
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @fprintf(i32* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %126

51:                                               ; preds = %2
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @fprintf(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

54:                                               ; preds = %2
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @fprintf(i32* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

57:                                               ; preds = %2
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @fprintf(i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

60:                                               ; preds = %2
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @fprintf(i32* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %126

63:                                               ; preds = %2
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @fprintf(i32* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %126

66:                                               ; preds = %2
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @fprintf(i32* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %126

69:                                               ; preds = %2
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @fprintf(i32* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

72:                                               ; preds = %2
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @fprintf(i32* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

75:                                               ; preds = %2
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @fprintf(i32* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

78:                                               ; preds = %2
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @fprintf(i32* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

81:                                               ; preds = %2
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @fprintf(i32* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

84:                                               ; preds = %2
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @fprintf(i32* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

87:                                               ; preds = %2
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @fprintf(i32* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

90:                                               ; preds = %2
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @fprintf(i32* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

93:                                               ; preds = %2
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @fprintf(i32* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

96:                                               ; preds = %2
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @fprintf(i32* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

99:                                               ; preds = %2
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @fprintf(i32* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

102:                                              ; preds = %2
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @fprintf(i32* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

105:                                              ; preds = %2
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @fprintf(i32* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

108:                                              ; preds = %2
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @fprintf(i32* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

111:                                              ; preds = %2
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @fprintf(i32* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

114:                                              ; preds = %2
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @fprintf(i32* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %126

117:                                              ; preds = %2
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @fprintf(i32* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

120:                                              ; preds = %2
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @fprintf(i32* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %126

123:                                              ; preds = %2
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @fprintf(i32* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %2, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
