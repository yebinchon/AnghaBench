; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_mac.c_mac_init_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_mac.c_mac_init_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINE_MAX = common dso_local global i32 0, align 4
@label_default_head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"MAC_CONFFILE\00", align 1
@MAC_CONFFILE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"default_labels\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"default_ifnet_labels\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"default_file_labels\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"default_process_labels\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ifnet\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@internal_initialized = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mac_init_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_init_internal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %17 = load i32, i32* @LINE_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %21 = call i32 @LIST_INIT(i32* @label_default_head)
  %22 = call i32 (...) @issetugid()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %4, align 8
  br label %31

29:                                               ; preds = %24, %1
  %30 = load i8*, i8** @MAC_CONFFILE, align 8
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i8*, i8** %4, align 8
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %183

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %172, %166, %158, %145, %101, %88, %69, %59, %37
  %39 = load i32, i32* @LINE_MAX, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @fgets(i8* %20, i32 %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %173

43:                                               ; preds = %38
  %44 = call i32 @strlen(i8* %20)
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %20, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = call i32 @strlen(i8* %20)
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %20, i64 %54
  store i8 0, i8* %55, align 1
  br label %64

56:                                               ; preds = %43
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %38

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @fclose(i32* %61)
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %8, align 4
  br label %176

64:                                               ; preds = %51
  store i8* %20, i8** %10, align 8
  %65 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %65, i8** %11, align 8
  %66 = call i8* @next_token(i8** %11)
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %38

70:                                               ; preds = %64
  %71 = load i8*, i8** %12, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %70
  %75 = call i8* @next_token(i8** %11)
  store i8* %75, i8** %13, align 8
  %76 = call i8* @next_token(i8** %11)
  store i8* %76, i8** %14, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %14, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = call i8* @next_token(i8** %11)
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %82, %79, %74
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %38

89:                                               ; preds = %85
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %8, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @fclose(i32* %91)
  br label %176

93:                                               ; preds = %82
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 @mac_add_type(i8* %94, i8* %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32, i32* %3, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %38

102:                                              ; preds = %98
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @fclose(i32* %103)
  br label %176

105:                                              ; preds = %93
  br label %172

106:                                              ; preds = %70
  %107 = load i8*, i8** %12, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %12, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i8*, i8** %12, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %163

118:                                              ; preds = %114, %110, %106
  %119 = load i8*, i8** %12, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  br label %135

123:                                              ; preds = %118
  %124 = load i8*, i8** %12, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %16, align 8
  br label %134

128:                                              ; preds = %123
  %129 = load i8*, i8** %12, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %16, align 8
  br label %133

133:                                              ; preds = %132, %128
  br label %134

134:                                              ; preds = %133, %127
  br label %135

135:                                              ; preds = %134, %122
  %136 = call i8* @next_token(i8** %11)
  store i8* %136, i8** %15, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = call i8* @next_token(i8** %11)
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %139, %135
  %143 = load i32, i32* %3, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %38

146:                                              ; preds = %142
  %147 = load i32, i32* @EINVAL, align 4
  store i32 %147, i32* %8, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @fclose(i32* %148)
  br label %176

150:                                              ; preds = %139
  %151 = load i8*, i8** %16, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = call i32 @mac_add_type(i8* %151, i8* %152)
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i32, i32* %3, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %38

159:                                              ; preds = %155
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @fclose(i32* %160)
  br label %176

162:                                              ; preds = %150
  br label %171

163:                                              ; preds = %114
  %164 = load i32, i32* %3, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %38

167:                                              ; preds = %163
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @fclose(i32* %168)
  %170 = load i32, i32* @EINVAL, align 4
  store i32 %170, i32* %8, align 4
  br label %176

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %171, %105
  br label %38

173:                                              ; preds = %38
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 @fclose(i32* %174)
  store i32 1, i32* @internal_initialized, align 4
  br label %176

176:                                              ; preds = %173, %167, %159, %146, %102, %89, %60
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = call i32 (...) @mac_destroy_internal()
  br label %181

181:                                              ; preds = %179, %176
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %183

183:                                              ; preds = %181, %36
  %184 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LIST_INIT(i32*) #2

declare dso_local i32 @issetugid(...) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i8* @next_token(i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @mac_add_type(i8*, i8*) #2

declare dso_local i32 @mac_destroy_internal(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
