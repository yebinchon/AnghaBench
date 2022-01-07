; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Too few arguments.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"noboot\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"geliboot\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"nogeliboot\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"displaypass\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"nodisplaypass\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"trim\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"notrim\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"autoresize\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"noautoresize\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Options -b and -B are mutually exclusive.\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Options -g and -G are mutually exclusive.\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Options -d and -D are mutually exclusive.\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Options -t and -T are mutually exclusive.\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Options -r and -R are mutually exclusive.\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"No option given.\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @eli_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eli_configure(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %21 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %22 = call i32 @gctl_get_int(%struct.gctl_req* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %20, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %27 = call i32 @gctl_error(%struct.gctl_req* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %183

28:                                               ; preds = %1
  %29 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %30 = call i32 @gctl_get_int(%struct.gctl_req* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  %31 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %32 = call i32 @gctl_get_int(%struct.gctl_req* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %32, i32* %5, align 4
  %33 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %34 = call i32 @gctl_get_int(%struct.gctl_req* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %34, i32* %6, align 4
  %35 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %36 = call i32 @gctl_get_int(%struct.gctl_req* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 %36, i32* %7, align 4
  %37 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %38 = call i32 @gctl_get_int(%struct.gctl_req* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 %38, i32* %8, align 4
  %39 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %40 = call i32 @gctl_get_int(%struct.gctl_req* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i32 %40, i32* %9, align 4
  %41 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %42 = call i32 @gctl_get_int(%struct.gctl_req* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32 %42, i32* %12, align 4
  %43 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %44 = call i32 @gctl_get_int(%struct.gctl_req* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i32 %44, i32* %13, align 4
  %45 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %46 = call i32 @gctl_get_int(%struct.gctl_req* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i32 %46, i32* %10, align 4
  %47 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %48 = call i32 @gctl_get_int(%struct.gctl_req* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store i32 %48, i32* %11, align 4
  store i32 -1, i32* %14, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %28
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %56 = call i32 @gctl_error(%struct.gctl_req* %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  br label %183

57:                                               ; preds = %51, %28
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %14, align 4
  br label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %64, %61
  br label %66

66:                                               ; preds = %65, %60
  store i32 -1, i32* %15, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %74 = call i32 @gctl_error(%struct.gctl_req* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  br label %183

75:                                               ; preds = %69, %66
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 1, i32* %15, align 4
  br label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %79
  br label %84

84:                                               ; preds = %83, %78
  store i32 -1, i32* %16, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %92 = call i32 @gctl_error(%struct.gctl_req* %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  br label %183

93:                                               ; preds = %87, %84
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 1, i32* %16, align 4
  br label %102

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %100, %97
  br label %102

102:                                              ; preds = %101, %96
  store i32 -1, i32* %17, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %110 = call i32 @gctl_error(%struct.gctl_req* %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  br label %183

111:                                              ; preds = %105, %102
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 1, i32* %17, align 4
  br label %120

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 0, i32* %17, align 4
  br label %119

119:                                              ; preds = %118, %115
  br label %120

120:                                              ; preds = %119, %114
  store i32 -1, i32* %18, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %128 = call i32 @gctl_error(%struct.gctl_req* %127, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  br label %183

129:                                              ; preds = %123, %120
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 1, i32* %18, align 4
  br label %138

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 0, i32* %18, align 4
  br label %137

137:                                              ; preds = %136, %133
  br label %138

138:                                              ; preds = %137, %132
  %139 = load i32, i32* %14, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load i32, i32* %15, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load i32, i32* %16, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load i32, i32* %17, align 4
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i32, i32* %18, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %155 = call i32 @gctl_error(%struct.gctl_req* %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  br label %183

156:                                              ; preds = %150, %147, %144, %141, %138
  %157 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %158 = call i32 @gctl_issue(%struct.gctl_req* %157)
  store i32 0, i32* %19, align 4
  br label %159

159:                                              ; preds = %180, %156
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %20, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %183

163:                                              ; preds = %159
  %164 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %165 = load i32, i32* %19, align 4
  %166 = call i8* @gctl_get_ascii(%struct.gctl_req* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %165)
  store i8* %166, i8** %3, align 8
  %167 = load i8*, i8** %3, align 8
  %168 = call i32 @eli_is_attached(i8* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %163
  %171 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %172 = load i8*, i8** %3, align 8
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %18, align 4
  %178 = call i32 @eli_configure_detached(%struct.gctl_req* %171, i8* %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %170, %163
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %19, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %19, align 4
  br label %159

183:                                              ; preds = %25, %54, %72, %90, %108, %126, %153, %159
  ret void
}

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_issue(%struct.gctl_req*) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @eli_is_attached(i8*) #1

declare dso_local i32 @eli_configure_detached(%struct.gctl_req*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
