; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_print_usage_details.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_print_usage_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i8*, i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@line_fmt_buf = common dso_local global i32 0, align 4
@zFmtFmt = common dso_local global i8* null, align 8
@NL = common dso_local global i32 0, align 4
@option_usage_fp = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@OPTST_DOCUMENT = common dso_local global i32 0, align 4
@tab_skip_ct = common dso_local global i32 0, align 4
@zFlagOkay = common dso_local global i8* null, align 8
@zNoFlags = common dso_local global i8* null, align 8
@zOptsOnly = common dso_local global i8* null, align 8
@OPTPROC_NUM_OPT = common dso_local global i32 0, align 4
@zNumberOpt = common dso_local global i8* null, align 8
@OPTPROC_REORDER = common dso_local global i32 0, align 4
@zReorder = common dso_local global i8* null, align 8
@zPlsSendBugs = common dso_local global i8* null, align 8
@zwriting = common dso_local global i32 0, align 4
@stderr = common dso_local global i64 0, align 8
@zstderr_name = common dso_local global i32 0, align 4
@zstdout_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @print_usage_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_usage_details(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = call i64 @do_gnu_usage(%struct.TYPE_11__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = call i32 @setGnuOptFmts(%struct.TYPE_11__* %11, i8** %5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @line_fmt_buf, align 4
  %14 = load i8*, i8** @zFmtFmt, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @sprintf(i32 %13, i8* %14, i32 %15)
  %17 = load i32, i32* @NL, align 4
  %18 = load i64, i64* @option_usage_fp, align 8
  %19 = call i32 @fputc(i32 %17, i64 %18)
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call i32 @setStdOptFmts(%struct.TYPE_11__* %21, i8** %5)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @line_fmt_buf, align 4
  %24 = load i8*, i8** @zFmtFmt, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @sprintf(i32 %23, i8* %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EXIT_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %20
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OPTST_DOCUMENT, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30, %20
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* @option_usage_fp, align 8
  %42 = call i32 @fputs(i8* %40, i64 %41)
  br label %43

43:                                               ; preds = %39, %30
  br label %44

44:                                               ; preds = %43, %10
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 15
  %47 = sdiv i32 %46, 8
  %48 = sub nsw i32 4, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* @tab_skip_ct, align 4
  br label %53

53:                                               ; preds = %51, %44
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @prt_opt_usage(%struct.TYPE_11__* %54, i32 %55, i8* %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 129
  switch i32 %61, label %75 [
    i32 129, label %62
    i32 128, label %66
    i32 130, label %67
    i32 0, label %71
  ]

62:                                               ; preds = %53
  %63 = load i8*, i8** @zFlagOkay, align 8
  %64 = load i64, i64* @option_usage_fp, align 8
  %65 = call i32 @fputs(i8* %63, i64 %64)
  br label %75

66:                                               ; preds = %53
  br label %75

67:                                               ; preds = %53
  %68 = load i8*, i8** @zNoFlags, align 8
  %69 = load i64, i64* @option_usage_fp, align 8
  %70 = call i32 @fputs(i8* %68, i64 %69)
  br label %75

71:                                               ; preds = %53
  %72 = load i8*, i8** @zOptsOnly, align 8
  %73 = load i64, i64* @option_usage_fp, align 8
  %74 = call i32 @fputs(i8* %72, i64 %73)
  br label %75

75:                                               ; preds = %53, %71, %67, %66, %62
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @OPTPROC_NUM_OPT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i8*, i8** @zNumberOpt, align 8
  %84 = load i64, i64* @option_usage_fp, align 8
  %85 = call i32 @fputs(i8* %83, i64 %84)
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @OPTPROC_REORDER, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i8*, i8** @zReorder, align 8
  %95 = load i64, i64* @option_usage_fp, align 8
  %96 = call i32 @fputs(i8* %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %86
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* @option_usage_fp, align 8
  %107 = call i32 @fputs(i8* %105, i64 %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @EXIT_SUCCESS, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = call i32 @prt_prog_detail(%struct.TYPE_11__* %113)
  br label %115

115:                                              ; preds = %112, %108
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = call i64 @HAS_pzPkgDataDir(%struct.TYPE_11__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = load i64, i64* @option_usage_fp, align 8
  %129 = call i32 @fputs(i8* %127, i64 %128)
  br label %143

130:                                              ; preds = %119, %115
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i64, i64* @option_usage_fp, align 8
  %137 = load i8*, i8** @zPlsSendBugs, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @fprintf(i64 %136, i8* %137, i32* %140)
  br label %142

142:                                              ; preds = %135, %130
  br label %143

143:                                              ; preds = %142, %124
  %144 = load i64, i64* @option_usage_fp, align 8
  %145 = call i32 @fflush(i64 %144)
  %146 = load i64, i64* @option_usage_fp, align 8
  %147 = call i64 @ferror(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %143
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @zwriting, align 4
  %154 = load i64, i64* @option_usage_fp, align 8
  %155 = load i64, i64* @stderr, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i32, i32* @zstderr_name, align 4
  br label %161

159:                                              ; preds = %149
  %160 = load i32, i32* @zstdout_name, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  %163 = call i32 @fserr_exit(i32 %152, i32 %153, i32 %162)
  br label %164

164:                                              ; preds = %161, %143
  ret void
}

declare dso_local i64 @do_gnu_usage(%struct.TYPE_11__*) #1

declare dso_local i32 @setGnuOptFmts(%struct.TYPE_11__*, i8**) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @fputc(i32, i64) #1

declare dso_local i32 @setStdOptFmts(%struct.TYPE_11__*, i8**) #1

declare dso_local i32 @fputs(i8*, i64) #1

declare dso_local i32 @prt_opt_usage(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @prt_prog_detail(%struct.TYPE_11__*) #1

declare dso_local i64 @HAS_pzPkgDataDir(%struct.TYPE_11__*) #1

declare dso_local i32 @fprintf(i64, i8*, i32*) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i64 @ferror(i64) #1

declare dso_local i32 @fserr_exit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
