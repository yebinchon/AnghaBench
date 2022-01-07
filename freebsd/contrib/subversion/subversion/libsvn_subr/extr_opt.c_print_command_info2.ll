; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_print_command_info2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_print_command_info2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8**, i8*, i32* }
%struct.TYPE_10__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@SVN_OPT_MAX_ALIASES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c" (\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@SVN_OPT_MAX_OPTIONS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"\0AValid options:\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\0AGlobal options:\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i64, i32*, i32*)* @print_command_info2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_command_info2(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @svn_cmdline_fputs(i8* %22, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i64, i64* @TRUE, align 8
  store i64 %27, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %28

28:                                               ; preds = %66, %6
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* @SVN_OPT_MAX_ALIASES, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %69

41:                                               ; preds = %32
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @svn_cmdline_fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %13, align 8
  br label %55

50:                                               ; preds = %41
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @svn_cmdline_fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %55

55:                                               ; preds = %50, %44
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i8**, i8*** %57, align 8
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @svn_cmdline_fputs(i8* %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %66

66:                                               ; preds = %55
  %67 = load i64, i64* %14, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %14, align 8
  br label %28

69:                                               ; preds = %40, %28
  %70 = load i64, i64* %13, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @svn_cmdline_fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %207

80:                                               ; preds = %77
  %81 = load i64, i64* @FALSE, align 8
  store i64 %81, i64* %17, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @_(i8* %86)
  %88 = call i32 (i32*, i32*, i8*, ...) @svn_cmdline_fprintf(i32* %82, i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  store i64 0, i64* %14, align 8
  br label %90

90:                                               ; preds = %143, %80
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* @SVN_OPT_MAX_OPTIONS, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %146

94:                                               ; preds = %90
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %142

102:                                              ; preds = %94
  %103 = load i64, i64* %17, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32*, i32** %12, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @svn_cmdline_fputs(i8* %106, i32* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i64, i64* @TRUE, align 8
  store i64 %111, i64* %17, align 8
  br label %112

112:                                              ; preds = %105, %102
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call %struct.TYPE_10__* @get_option_from_code(i8** %16, i32 %118, %struct.TYPE_10__* %119, %struct.TYPE_9__* %120, i32* %121)
  store %struct.TYPE_10__* %122, %struct.TYPE_10__** %15, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %124 = icmp ne %struct.TYPE_10__* %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %112
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = load i64, i64* @TRUE, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @format_option(i8** %18, %struct.TYPE_10__* %131, i8* %132, i64 %133, i32* %134)
  %136 = load i32*, i32** %12, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load i8*, i8** %18, align 8
  %139 = call i32 (i32*, i32*, i8*, ...) @svn_cmdline_fprintf(i32* %136, i32* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  br label %141

141:                                              ; preds = %130, %125, %112
  br label %142

142:                                              ; preds = %141, %94
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %14, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %14, align 8
  br label %90

146:                                              ; preds = %90
  %147 = load i32*, i32** %9, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %198

149:                                              ; preds = %146
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %198

153:                                              ; preds = %149
  %154 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %155 = load i32*, i32** %12, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 @svn_cmdline_fputs(i8* %154, i32* %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load i64, i64* @TRUE, align 8
  store i64 %159, i64* %17, align 8
  store i64 0, i64* %14, align 8
  br label %160

160:                                              ; preds = %194, %153
  %161 = load i32*, i32** %9, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %197

166:                                              ; preds = %160
  %167 = load i32*, i32** %9, align 8
  %168 = load i64, i64* %14, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = call %struct.TYPE_10__* @get_option_from_code(i8** %16, i32 %170, %struct.TYPE_10__* %171, %struct.TYPE_9__* %172, i32* %173)
  store %struct.TYPE_10__* %174, %struct.TYPE_10__** %15, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %176 = icmp ne %struct.TYPE_10__* %175, null
  br i1 %176, label %177, label %193

177:                                              ; preds = %166
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %177
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %184 = load i8*, i8** %16, align 8
  %185 = load i64, i64* @TRUE, align 8
  %186 = load i32*, i32** %11, align 8
  %187 = call i32 @format_option(i8** %19, %struct.TYPE_10__* %183, i8* %184, i64 %185, i32* %186)
  %188 = load i32*, i32** %12, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = load i8*, i8** %19, align 8
  %191 = call i32 (i32*, i32*, i8*, ...) @svn_cmdline_fprintf(i32* %188, i32* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %190)
  %192 = call i32 @SVN_ERR(i32 %191)
  br label %193

193:                                              ; preds = %182, %177, %166
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %14, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %14, align 8
  br label %160

197:                                              ; preds = %160
  br label %198

198:                                              ; preds = %197, %149, %146
  %199 = load i64, i64* %17, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load i32*, i32** %12, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = call i32 (i32*, i32*, i8*, ...) @svn_cmdline_fprintf(i32* %202, i32* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %205 = call i32 @SVN_ERR(i32 %204)
  br label %206

206:                                              ; preds = %201, %198
  br label %207

207:                                              ; preds = %206, %77
  %208 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %208
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_fputs(i8*, i32*, i32*) #1

declare dso_local i32 @svn_cmdline_fprintf(i32*, i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_10__* @get_option_from_code(i8**, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @format_option(i8**, %struct.TYPE_10__*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
