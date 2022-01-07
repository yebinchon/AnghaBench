; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_prt_opt_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_prt_opt_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8* }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i8*, i8*, i32 }

@OPTST_NO_USAGE_MASK = common dso_local global i32 0, align 4
@OPTST_OMITTED = common dso_local global i32 0, align 4
@OPTST_NO_INIT = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@zDisabledWhy = common dso_local global i8* null, align 8
@argTypes = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@option_usage_fp = common dso_local global i32 0, align 4
@zDisabledOpt = common dso_local global i8* null, align 8
@OPTST_DOCUMENT = common dso_local global i32 0, align 4
@OPTPROC_VENDOR_OPT = common dso_local global i32 0, align 4
@zAuto = common dso_local global i8* null, align 8
@zVendIntro = common dso_local global i8* null, align 8
@NL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i8*)* @prt_opt_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prt_opt_usage(%struct.TYPE_13__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %161, %3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OPTST_NO_USAGE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %18
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OPTST_OMITTED, align 4
  %30 = load i32, i32* @OPTST_NO_INIT, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %25
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @EXIT_SUCCESS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i8*, i8** @zDisabledWhy, align 8
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi i8* [ %48, %47 ], [ %52, %49 ]
  store i8* %54, i8** %11, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = call i32 @prt_preamble(%struct.TYPE_13__* %55, %struct.TYPE_14__* %56, %struct.TYPE_15__* @argTypes)
  %58 = load i32, i32* @option_usage_fp, align 4
  %59 = load i8*, i8** @zDisabledOpt, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @fprintf(i32 %58, i8* %59, i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %53, %38, %33, %25
  br label %161

66:                                               ; preds = %18
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @OPTST_DOCUMENT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @EXIT_SUCCESS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i32, i32* @option_usage_fp, align 4
  %79 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @argTypes, i32 0, i32 0), align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @fprintf(i32 %78, i8* %79, i8* %82, i8* %83)
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %77, %73
  br label %161

88:                                               ; preds = %66
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @OPTPROC_VENDOR_OPT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @IS_GRAPHIC_CHAR(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  br label %161

102:                                              ; preds = %95, %88
  %103 = load i32, i32* %10, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %148

105:                                              ; preds = %102
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @EXIT_SUCCESS, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %148

109:                                              ; preds = %105
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %109
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i64 -1
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @OPTST_DOCUMENT, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load i32, i32* @option_usage_fp, align 4
  %125 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @argTypes, i32 0, i32 0), align 8
  %126 = load i8*, i8** @zAuto, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @fprintf(i32 %124, i8* %125, i8* %126, i8* %127)
  br label %129

129:                                              ; preds = %123, %115
  br label %147

130:                                              ; preds = %109
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %146

133:                                              ; preds = %130
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @OPTPROC_VENDOR_OPT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load i32, i32* @option_usage_fp, align 4
  %142 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @argTypes, i32 0, i32 0), align 8
  %143 = load i8*, i8** @zVendIntro, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @fprintf(i32 %141, i8* %142, i8* %143, i8* %144)
  br label %146

146:                                              ; preds = %140, %133, %130
  br label %147

147:                                              ; preds = %146, %129
  br label %148

148:                                              ; preds = %147, %105, %102
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %151 = call i32 @prt_one_usage(%struct.TYPE_13__* %149, %struct.TYPE_14__* %150, %struct.TYPE_15__* @argTypes)
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @EXIT_SUCCESS, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 @prt_extd_usage(%struct.TYPE_13__* %156, %struct.TYPE_14__* %157, i8* %158)
  br label %160

160:                                              ; preds = %155, %148
  br label %161

161:                                              ; preds = %160, %101, %87, %65
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 1
  store %struct.TYPE_14__* %163, %struct.TYPE_14__** %9, align 8
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %7, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %18, label %169

169:                                              ; preds = %161
  %170 = load i32, i32* @NL, align 4
  %171 = load i32, i32* @option_usage_fp, align 4
  %172 = call i32 @fputc(i32 %170, i32 %171)
  ret void
}

declare dso_local i32 @prt_preamble(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @IS_GRAPHIC_CHAR(i32) #1

declare dso_local i32 @prt_one_usage(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @prt_extd_usage(%struct.TYPE_13__*, %struct.TYPE_14__*, i8*) #1

declare dso_local i32 @fputc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
