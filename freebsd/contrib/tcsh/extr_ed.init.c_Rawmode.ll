; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_Rawmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.init.c_Rawmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@Tty_raw_mode = common dso_local global i32 0, align 4
@SHTTY = common dso_local global i32 0, align 4
@tstty = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@T_Speed = common dso_local global i64 0, align 8
@Tty_eight_bit = common dso_local global i32 0, align 4
@extty = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@edtty = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@T_Tabs = common dso_local global i64 0, align 8
@ttylist = common dso_local global %struct.TYPE_16__** null, align 8
@EX_IO = common dso_local global i64 0, align 8
@M_CONTROL = common dso_local global i64 0, align 8
@XTABS = common dso_local global i32 0, align 4
@M_LOCAL = common dso_local global i64 0, align 8
@ED_IO = common dso_local global i64 0, align 8
@ttychars = common dso_local global i64** null, align 8
@TS_IO = common dso_local global i64 0, align 8
@C_NCC = common dso_local global i32 0, align 4
@didsetty = common dso_local global i64 0, align 8
@M_CHAR = common dso_local global i64 0, align 8
@vdisable = common dso_local global i64 0, align 8
@M_INPUT = common dso_local global i64 0, align 8
@M_LINED = common dso_local global i64 0, align 8
@M_OUTPUT = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Rawmode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @Tty_raw_mode, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %381

6:                                                ; preds = %0
  %7 = load i32, i32* @SHTTY, align 4
  %8 = call i32 @tty_getty(i32 %7, %struct.TYPE_17__* @tstty)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 -1, i32* %1, align 4
  br label %381

11:                                               ; preds = %6
  %12 = call i64 @tty_getspeed(%struct.TYPE_17__* @tstty)
  store i64 %12, i64* @T_Speed, align 8
  %13 = call i32 @tty_geteightbit(%struct.TYPE_17__* @tstty)
  store i32 %13, i32* @Tty_eight_bit, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 0), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tstty, i32 0, i32 1, i32 0), align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tstty, i32 0, i32 1, i32 0), align 8
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 0), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tstty, i32 0, i32 1, i32 0), align 8
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 1, i32 0), align 8
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 1), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tstty, i32 0, i32 1, i32 1), align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tstty, i32 0, i32 1, i32 1), align 8
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 1), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tstty, i32 0, i32 1, i32 1), align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 1, i32 1), align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = call i64 @tty_cooked_mode(%struct.TYPE_17__* @tstty)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %374

30:                                               ; preds = %27
  %31 = call i64 @tty_gettabs(%struct.TYPE_17__* @tstty)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i64 0, i64* @T_Tabs, align 8
  br label %36

34:                                               ; preds = %30
  %35 = call i64 (...) @CanWeTab()
  store i64 %35, i64* @T_Tabs, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tstty, i32 0, i32 1, i32 6), align 8
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 6), align 8
  %38 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %39 = load i64, i64* @EX_IO, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %38, i64 %39
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = load i64, i64* @M_CONTROL, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 6), align 8
  %48 = and i32 %47, %46
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 6), align 8
  %49 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %50 = load i64, i64* @EX_IO, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %49, i64 %50
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = load i64, i64* @M_CONTROL, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 6), align 8
  %58 = or i32 %57, %56
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 6), align 8
  %59 = load i64, i64* @T_Tabs, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %36
  %62 = load i32, i32* @XTABS, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 6), align 8
  %65 = and i32 %64, %63
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 6), align 8
  br label %70

66:                                               ; preds = %36
  %67 = load i32, i32* @XTABS, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 6), align 8
  %69 = or i32 %68, %67
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 6), align 8
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tstty, i32 0, i32 0), align 8
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 0), align 8
  %72 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %73 = load i64, i64* @EX_IO, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %72, i64 %73
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = load i64, i64* @M_LOCAL, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 0), align 8
  %82 = and i32 %81, %80
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 0), align 8
  %83 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %84 = load i64, i64* @EX_IO, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %83, i64 %84
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load i64, i64* @M_LOCAL, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 0), align 8
  %92 = or i32 %91, %90
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 0), align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @extty, i32 0, i32 1, i32 6), align 8
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 1, i32 6), align 8
  %94 = load i64, i64* @T_Tabs, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %70
  %97 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %98 = load i64, i64* @ED_IO, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %97, i64 %98
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = load i64, i64* @M_CONTROL, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @XTABS, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 1, i32 6), align 8
  %109 = and i32 %108, %107
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 1, i32 6), align 8
  %110 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %111 = load i64, i64* @ED_IO, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %110, i64 %111
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load i64, i64* @M_CONTROL, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 1, i32 6), align 8
  %119 = or i32 %118, %117
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 1, i32 6), align 8
  br label %144

120:                                              ; preds = %70
  %121 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %122 = load i64, i64* @ED_IO, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %121, i64 %122
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = load i64, i64* @M_CONTROL, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 1, i32 6), align 8
  %131 = and i32 %130, %129
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 1, i32 6), align 8
  %132 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %133 = load i64, i64* @ED_IO, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %132, i64 %133
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = load i64, i64* @M_CONTROL, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @XTABS, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 1, i32 6), align 8
  %143 = or i32 %142, %141
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 1, i32 6), align 8
  br label %144

144:                                              ; preds = %120, %96
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @tstty, i32 0, i32 0), align 8
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 0), align 8
  %146 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %147 = load i64, i64* @ED_IO, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %146, i64 %147
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = load i64, i64* @M_LOCAL, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 0), align 8
  %156 = and i32 %155, %154
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 0), align 8
  %157 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %158 = load i64, i64* @ED_IO, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %157, i64 %158
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = load i64, i64* @M_LOCAL, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 0), align 8
  %166 = or i32 %165, %164
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @edtty, i32 0, i32 0), align 8
  %167 = load i64**, i64*** @ttychars, align 8
  %168 = load i64, i64* @TS_IO, align 8
  %169 = getelementptr inbounds i64*, i64** %167, i64 %168
  %170 = load i64*, i64** %169, align 8
  %171 = call i32 @tty_getchar(%struct.TYPE_17__* @tstty, i64* %170)
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %196, %144
  %173 = load i32, i32* %2, align 4
  %174 = load i32, i32* @C_NCC, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %199

176:                                              ; preds = %172
  %177 = load i64**, i64*** @ttychars, align 8
  %178 = load i64, i64* @TS_IO, align 8
  %179 = getelementptr inbounds i64*, i64** %177, i64 %178
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* %2, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load i64**, i64*** @ttychars, align 8
  %186 = load i64, i64* @EX_IO, align 8
  %187 = getelementptr inbounds i64*, i64** %185, i64 %186
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %2, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %184, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %176
  br label %199

195:                                              ; preds = %176
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %2, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %2, align 4
  br label %172

199:                                              ; preds = %194, %172
  %200 = load i32, i32* %2, align 4
  %201 = load i32, i32* @C_NCC, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = load i64, i64* @didsetty, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %373

206:                                              ; preds = %203, %199
  store i64 0, i64* @didsetty, align 8
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %281, %206
  %208 = load i32, i32* %2, align 4
  %209 = load i32, i32* @C_NCC, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %284

211:                                              ; preds = %207
  %212 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %213 = load i64, i64* @ED_IO, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %212, i64 %213
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = load i64, i64* @M_CHAR, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %2, align 4
  %221 = call i32 @C_SH(i32 %220)
  %222 = and i32 %219, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %258, label %224

224:                                              ; preds = %211
  %225 = load i64**, i64*** @ttychars, align 8
  %226 = load i64, i64* @TS_IO, align 8
  %227 = getelementptr inbounds i64*, i64** %225, i64 %226
  %228 = load i64*, i64** %227, align 8
  %229 = load i32, i32* %2, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load i64**, i64*** @ttychars, align 8
  %234 = load i64, i64* @EX_IO, align 8
  %235 = getelementptr inbounds i64*, i64** %233, i64 %234
  %236 = load i64*, i64** %235, align 8
  %237 = load i32, i32* %2, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64, i64* %236, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %232, %240
  br i1 %241, label %242, label %258

242:                                              ; preds = %224
  %243 = load i64**, i64*** @ttychars, align 8
  %244 = load i64, i64* @TS_IO, align 8
  %245 = getelementptr inbounds i64*, i64** %243, i64 %244
  %246 = load i64*, i64** %245, align 8
  %247 = load i32, i32* %2, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = load i64**, i64*** @ttychars, align 8
  %252 = load i64, i64* @ED_IO, align 8
  %253 = getelementptr inbounds i64*, i64** %251, i64 %252
  %254 = load i64*, i64** %253, align 8
  %255 = load i32, i32* %2, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %254, i64 %256
  store i64 %250, i64* %257, align 8
  br label %258

258:                                              ; preds = %242, %224, %211
  %259 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %260 = load i64, i64* @ED_IO, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %259, i64 %260
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %261, align 8
  %263 = load i64, i64* @M_CHAR, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %2, align 4
  %268 = call i32 @C_SH(i32 %267)
  %269 = and i32 %266, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %258
  %272 = load i64, i64* @vdisable, align 8
  %273 = load i64**, i64*** @ttychars, align 8
  %274 = load i64, i64* @ED_IO, align 8
  %275 = getelementptr inbounds i64*, i64** %273, i64 %274
  %276 = load i64*, i64** %275, align 8
  %277 = load i32, i32* %2, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %276, i64 %278
  store i64 %272, i64* %279, align 8
  br label %280

280:                                              ; preds = %271, %258
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %2, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %2, align 4
  br label %207

284:                                              ; preds = %207
  %285 = load i64**, i64*** @ttychars, align 8
  %286 = load i64, i64* @ED_IO, align 8
  %287 = getelementptr inbounds i64*, i64** %285, i64 %286
  %288 = load i64*, i64** %287, align 8
  %289 = call i32 @tty_setchar(%struct.TYPE_17__* @edtty, i64* %288)
  store i32 0, i32* %2, align 4
  br label %290

290:                                              ; preds = %364, %284
  %291 = load i32, i32* %2, align 4
  %292 = load i32, i32* @C_NCC, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %367

294:                                              ; preds = %290
  %295 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %296 = load i64, i64* @EX_IO, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %295, i64 %296
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %297, align 8
  %299 = load i64, i64* @M_CHAR, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %2, align 4
  %304 = call i32 @C_SH(i32 %303)
  %305 = and i32 %302, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %341, label %307

307:                                              ; preds = %294
  %308 = load i64**, i64*** @ttychars, align 8
  %309 = load i64, i64* @TS_IO, align 8
  %310 = getelementptr inbounds i64*, i64** %308, i64 %309
  %311 = load i64*, i64** %310, align 8
  %312 = load i32, i32* %2, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = load i64**, i64*** @ttychars, align 8
  %317 = load i64, i64* @EX_IO, align 8
  %318 = getelementptr inbounds i64*, i64** %316, i64 %317
  %319 = load i64*, i64** %318, align 8
  %320 = load i32, i32* %2, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %319, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %315, %323
  br i1 %324, label %325, label %341

325:                                              ; preds = %307
  %326 = load i64**, i64*** @ttychars, align 8
  %327 = load i64, i64* @TS_IO, align 8
  %328 = getelementptr inbounds i64*, i64** %326, i64 %327
  %329 = load i64*, i64** %328, align 8
  %330 = load i32, i32* %2, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i64, i64* %329, i64 %331
  %333 = load i64, i64* %332, align 8
  %334 = load i64**, i64*** @ttychars, align 8
  %335 = load i64, i64* @EX_IO, align 8
  %336 = getelementptr inbounds i64*, i64** %334, i64 %335
  %337 = load i64*, i64** %336, align 8
  %338 = load i32, i32* %2, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  store i64 %333, i64* %340, align 8
  br label %341

341:                                              ; preds = %325, %307, %294
  %342 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @ttylist, align 8
  %343 = load i64, i64* @EX_IO, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %342, i64 %343
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %344, align 8
  %346 = load i64, i64* @M_CHAR, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %2, align 4
  %351 = call i32 @C_SH(i32 %350)
  %352 = and i32 %349, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %341
  %355 = load i64, i64* @vdisable, align 8
  %356 = load i64**, i64*** @ttychars, align 8
  %357 = load i64, i64* @EX_IO, align 8
  %358 = getelementptr inbounds i64*, i64** %356, i64 %357
  %359 = load i64*, i64** %358, align 8
  %360 = load i32, i32* %2, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i64, i64* %359, i64 %361
  store i64 %355, i64* %362, align 8
  br label %363

363:                                              ; preds = %354, %341
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %2, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %2, align 4
  br label %290

367:                                              ; preds = %290
  %368 = load i64**, i64*** @ttychars, align 8
  %369 = load i64, i64* @EX_IO, align 8
  %370 = getelementptr inbounds i64*, i64** %368, i64 %369
  %371 = load i64*, i64** %370, align 8
  %372 = call i32 @tty_setchar(%struct.TYPE_17__* @extty, i64* %371)
  br label %373

373:                                              ; preds = %367, %203
  br label %374

374:                                              ; preds = %373, %27
  %375 = load i32, i32* @SHTTY, align 4
  %376 = call i32 @tty_setty(i32 %375, %struct.TYPE_17__* @edtty)
  %377 = icmp eq i32 %376, -1
  br i1 %377, label %378, label %379

378:                                              ; preds = %374
  store i32 -1, i32* %1, align 4
  br label %381

379:                                              ; preds = %374
  store i32 1, i32* @Tty_raw_mode, align 4
  %380 = call i32 (...) @flush()
  store i32 0, i32* %1, align 4
  br label %381

381:                                              ; preds = %379, %378, %10, %5
  %382 = load i32, i32* %1, align 4
  ret i32 %382
}

declare dso_local i32 @tty_getty(i32, %struct.TYPE_17__*) #1

declare dso_local i64 @tty_getspeed(%struct.TYPE_17__*) #1

declare dso_local i32 @tty_geteightbit(%struct.TYPE_17__*) #1

declare dso_local i64 @tty_cooked_mode(%struct.TYPE_17__*) #1

declare dso_local i64 @tty_gettabs(%struct.TYPE_17__*) #1

declare dso_local i64 @CanWeTab(...) #1

declare dso_local i32 @tty_getchar(%struct.TYPE_17__*, i64*) #1

declare dso_local i32 @C_SH(i32) #1

declare dso_local i32 @tty_setchar(%struct.TYPE_17__*, i64*) #1

declare dso_local i32 @tty_setty(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
