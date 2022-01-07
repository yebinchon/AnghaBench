; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/encoder/csv/extr_enc_csv.c_csv_emit_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/encoder/csv/extr_enc_csv.c_csv_emit_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"csv: emit: ...\0A\00", align 1
@CF_HEADER_DONE = common dso_local global i32 0, align 4
@CF_NO_HEADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@LF_HAS_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@QF_NEEDS_QUOTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@QF_NEEDS_ESCAPE = common dso_local global i32 0, align 4
@XOF_FLUSH = common dso_local global i32 0, align 4
@XOF_FLUSH_LINE = common dso_local global i32 0, align 4
@CF_LEAFS_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @csv_emit_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csv_emit_record(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i32 @csv_dbg(i32* %10, %struct.TYPE_8__* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %199

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CF_HEADER_DONE, align 4
  %23 = load i32, i32* @CF_NO_HEADER, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %72, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @CF_HEADER_DONE, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %64, %27
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %43
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %7, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @xo_buf_data(i32* %46, i64 %49)
  store i8* %50, i8** %8, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = call i32 @xo_buf_append(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %57

57:                                               ; preds = %53, %39
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = call i32 @xo_buf_append(i32* %59, i8* %60, i32 %62)
  br label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %33

67:                                               ; preds = %33
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = call i32 @csv_append_newline(i32* %69, %struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %67, %18
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %148, %72
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %151

79:                                               ; preds = %73
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %83
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %7, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @LF_HAS_VALUE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %79
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @xo_buf_data(i32* %93, i64 %96)
  store i8* %97, i8** %9, align 8
  br label %99

98:                                               ; preds = %79
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %99

99:                                               ; preds = %98, %91
  %100 = load i32*, i32** %3, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @csv_quote_flags(i32* %100, %struct.TYPE_8__* %101, i8* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i64, i64* %5, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 4
  %109 = call i32 @xo_buf_append(i32* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %110

110:                                              ; preds = %106, %99
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @QF_NEEDS_QUOTES, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 4
  %118 = call i32 @xo_buf_append(i32* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @QF_NEEDS_ESCAPE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @strlen(i8* %128)
  %130 = call i32 @csv_escape(i32* %126, i8* %127, i32 %129)
  br label %138

131:                                              ; preds = %119
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 4
  %134 = load i8*, i8** %9, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @strlen(i8* %135)
  %137 = call i32 @xo_buf_append(i32* %133, i8* %134, i32 %136)
  br label %138

138:                                              ; preds = %131, %124
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @QF_NEEDS_QUOTES, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 4
  %146 = call i32 @xo_buf_append(i32* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %147

147:                                              ; preds = %143, %138
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %5, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %5, align 8
  br label %73

151:                                              ; preds = %73
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %155 = call i32 @csv_append_newline(i32* %153, %struct.TYPE_8__* %154)
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @xo_get_flags(i32* %156)
  %158 = load i32, i32* @XOF_FLUSH, align 4
  %159 = load i32, i32* @XOF_FLUSH_LINE, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %157, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %151
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @xo_flush_h(i32* %164)
  br label %166

166:                                              ; preds = %163, %151
  store i64 0, i64* %5, align 8
  br label %167

167:                                              ; preds = %187, %166
  %168 = load i64, i64* %5, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ult i64 %168, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %167
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = load i64, i64* %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i64 %177
  store %struct.TYPE_7__* %178, %struct.TYPE_7__** %7, align 8
  %179 = load i32, i32* @LF_HAS_VALUE, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  br label %187

187:                                              ; preds = %173
  %188 = load i64, i64* %5, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %5, align 8
  br label %167

190:                                              ; preds = %167
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = call i32 @xo_buf_reset(i32* %192)
  %194 = load i32, i32* @CF_LEAFS_DONE, align 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %190, %17
  ret void
}

declare dso_local i32 @csv_dbg(i32*, %struct.TYPE_8__*, i8*) #1

declare dso_local i8* @xo_buf_data(i32*, i64) #1

declare dso_local i32 @xo_buf_append(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @csv_append_newline(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @csv_quote_flags(i32*, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @csv_escape(i32*, i8*, i32) #1

declare dso_local i32 @xo_get_flags(i32*) #1

declare dso_local i32 @xo_flush_h(i32*) #1

declare dso_local i32 @xo_buf_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
