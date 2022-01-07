; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_tok_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_tok_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AU_OFLAG_XML = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"<record \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"</record>\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<argument \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"<attribute \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"<exit \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"<exec_args>\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"<exec_env>\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"<file \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"<group>\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"<ip_address>\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"<ip \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"<IPC\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"<IPC_perm \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"<ip_port>\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"<opaque>\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"<path>\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"<process \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"<return \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"<sequence \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"<socket \00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"<socket-inet \00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"<socket-unix \00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"<socket-inet6 \00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"<subject \00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"<text>\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"<arbitrary \00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"<zone \00", align 1
@AU_OFLAG_RAW = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32)* @print_tok_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_tok_type(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AU_OFLAG_XML, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %139

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %138 [
    i32 160, label %15
    i32 159, label %18
    i32 158, label %21
    i32 157, label %24
    i32 129, label %27
    i32 168, label %30
    i32 167, label %33
    i32 166, label %36
    i32 165, label %39
    i32 161, label %42
    i32 163, label %45
    i32 162, label %48
    i32 148, label %51
    i32 150, label %54
    i32 156, label %57
    i32 155, label %60
    i32 154, label %63
    i32 153, label %66
    i32 152, label %69
    i32 151, label %72
    i32 149, label %75
    i32 147, label %78
    i32 146, label %81
    i32 145, label %84
    i32 144, label %87
    i32 143, label %90
    i32 142, label %93
    i32 141, label %96
    i32 140, label %99
    i32 139, label %102
    i32 136, label %105
    i32 135, label %108
    i32 137, label %111
    i32 134, label %114
    i32 132, label %117
    i32 133, label %120
    i32 131, label %123
    i32 130, label %126
    i32 138, label %129
    i32 164, label %132
    i32 128, label %135
  ]

15:                                               ; preds = %13
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %138

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %138

21:                                               ; preds = %13
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %138

24:                                               ; preds = %13
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %138

27:                                               ; preds = %13
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %138

30:                                               ; preds = %13
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %138

33:                                               ; preds = %13
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %138

36:                                               ; preds = %13
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %138

39:                                               ; preds = %13
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %138

42:                                               ; preds = %13
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %138

45:                                               ; preds = %13
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %138

48:                                               ; preds = %13
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %138

51:                                               ; preds = %13
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %138

54:                                               ; preds = %13
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %138

57:                                               ; preds = %13
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %138

60:                                               ; preds = %13
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %138

63:                                               ; preds = %13
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %138

66:                                               ; preds = %13
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %138

69:                                               ; preds = %13
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %138

72:                                               ; preds = %13
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %138

75:                                               ; preds = %13
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %138

78:                                               ; preds = %13
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %138

81:                                               ; preds = %13
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %138

84:                                               ; preds = %13
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %138

87:                                               ; preds = %13
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %138

90:                                               ; preds = %13
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %138

93:                                               ; preds = %13
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %138

96:                                               ; preds = %13
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %138

99:                                               ; preds = %13
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  br label %138

102:                                              ; preds = %13
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  br label %138

105:                                              ; preds = %13
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  br label %138

108:                                              ; preds = %13
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  br label %138

111:                                              ; preds = %13
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  br label %138

114:                                              ; preds = %13
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  br label %138

117:                                              ; preds = %13
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  br label %138

120:                                              ; preds = %13
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 (i32*, i8*, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  br label %138

123:                                              ; preds = %13
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 (i32*, i8*, ...) @fprintf(i32* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  br label %138

126:                                              ; preds = %13
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %138

129:                                              ; preds = %13
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  br label %138

132:                                              ; preds = %13
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  br label %138

135:                                              ; preds = %13
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  br label %138

138:                                              ; preds = %13, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15
  br label %153

139:                                              ; preds = %4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @AU_OFLAG_RAW, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 (i32*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32 %146)
  br label %152

148:                                              ; preds = %139
  %149 = load i32*, i32** %5, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %148, %144
  br label %153

153:                                              ; preds = %152, %138
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
