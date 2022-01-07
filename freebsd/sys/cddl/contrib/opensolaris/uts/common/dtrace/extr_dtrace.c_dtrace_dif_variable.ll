; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dif_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dif_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, i32, %struct.TYPE_31__*, %struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_45__*, i32, %struct.trapframe* }
%struct.TYPE_31__ = type { i32, %struct.trapframe* }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, %struct.TYPE_47__*, %struct.TYPE_44__, i32, %struct.TYPE_37__* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_45__ = type { i32, %struct.pargs* }
%struct.pargs = type { i32, i32 }
%struct.trapframe = type { i32 }
%struct.TYPE_40__ = type { i32* }
%struct.TYPE_39__ = type { i32, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_49__*, %struct.TYPE_46__*, %struct.TYPE_43__ }
%struct.TYPE_49__ = type { i32, i32 }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32, i32, i32, i32, %struct.TYPE_32__*, i32, i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 (i32, i32, i32, i32, i32)* }

@DIF_VAR_ARG0 = common dso_local global i32 0, align 4
@DIF_VAR_ARG9 = common dso_local global i32 0, align 4
@DTRACE_MSTATE_ARGS = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_38__* null, align 8
@CPU_DTRACE_BADADDR = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_40__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@DTRACE_MSTATE_TIMESTAMP = common dso_local global i32 0, align 4
@dtrace_vtime_references = common dso_local global i32 0, align 4
@DTRACE_MSTATE_WALLTIMESTAMP = common dso_local global i32 0, align 4
@DTRACE_MSTATE_EPID = common dso_local global i32 0, align 4
@DTRACE_MSTATE_PROBE = common dso_local global i32 0, align 4
@DTRACE_MSTATE_STACKDEPTH = common dso_local global i32 0, align 4
@DTRACE_MSTATE_USTACKDEPTH = common dso_local global i32 0, align 4
@CPU = common dso_local global i32 0, align 4
@CPU_DTRACE_NOFAULT = common dso_local global i32 0, align 4
@DTRACE_MSTATE_CALLER = common dso_local global i32 0, align 4
@DTRACE_MSTATE_UCALLER = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_39__* null, align 8
@proc0 = common dso_local global %struct.TYPE_34__ zeroinitializer, align 4
@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4
@DTRACE_MSTATE_IPL = common dso_local global i32 0, align 4
@p0 = common dso_local global %struct.TYPE_36__ zeroinitializer, align 8
@pid0 = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, i32*, i32, i32)* @dtrace_dif_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_dif_variable(%struct.TYPE_33__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.trapframe*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i8*], align 16
  %17 = alloca i8*, align 8
  %18 = alloca [3 x i32], align 4
  %19 = alloca %struct.pargs*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @DIF_VAR_ARG0, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @DIF_VAR_ARG9, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @DIF_VAR_ARG0, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %9, align 4
  store i32 156, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %23, %4
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %535 [
    i32 156, label %33
    i32 132, label %102
    i32 153, label %123
    i32 135, label %132
    i32 130, label %152
    i32 129, label %160
    i32 152, label %180
    i32 147, label %190
    i32 137, label %202
    i32 131, label %234
    i32 155, label %277
    i32 134, label %342
    i32 138, label %375
    i32 140, label %393
    i32 141, label %409
    i32 139, label %425
    i32 143, label %441
    i32 142, label %450
    i32 136, label %471
    i32 150, label %475
    i32 149, label %495
    i32 128, label %505
    i32 133, label %506
    i32 148, label %517
    i32 151, label %528
    i32 154, label %532
  ]

33:                                               ; preds = %31
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DTRACE_MSTATE_ARGS, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp uge i64 %41, 2
  br i1 %42, label %43, label %94

43:                                               ; preds = %33
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 10
  %46 = load %struct.TYPE_41__*, %struct.TYPE_41__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %10, align 4
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 10
  %52 = load %struct.TYPE_41__*, %struct.TYPE_41__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %53, align 8
  store %struct.TYPE_32__* %54, %struct.TYPE_32__** %11, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 0
  %58 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %57, align 8
  %59 = icmp ne i32 (i32, i32, i32, i32, i32)* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %43
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 0
  %64 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %63, align 8
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 10
  %70 = load %struct.TYPE_41__*, %struct.TYPE_41__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i32 0, i32 10
  %75 = load %struct.TYPE_41__*, %struct.TYPE_41__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 %64(i32 %67, i32 %72, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  br label %85

81:                                               ; preds = %43
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @dtrace_getarg(i32 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %81, %60
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 10
  %88 = load %struct.TYPE_41__*, %struct.TYPE_41__** %87, align 8
  %89 = icmp ne %struct.TYPE_41__* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %5, align 4
  br label %538

92:                                               ; preds = %85
  %93 = call i32 @ASSERT(i32 0)
  br label %94

94:                                               ; preds = %92, %33
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %5, align 4
  br label %538

102:                                              ; preds = %31
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @dtrace_priv_proc(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %538

107:                                              ; preds = %102
  %108 = load %struct.TYPE_38__*, %struct.TYPE_38__** @curthread, align 8
  %109 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %108, i32 0, i32 7
  %110 = load %struct.trapframe*, %struct.trapframe** %109, align 8
  store %struct.trapframe* %110, %struct.trapframe** %13, align 8
  %111 = icmp eq %struct.trapframe* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %114 = call i32 @DTRACE_CPUFLAG_SET(i32 %113)
  %115 = load %struct.TYPE_40__*, %struct.TYPE_40__** @cpu_core, align 8
  %116 = load i64, i64* @curcpu, align 8
  %117 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  store i32 0, i32* %5, align 4
  br label %538

119:                                              ; preds = %107
  %120 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @dtrace_getreg(%struct.trapframe* %120, i32 %121)
  store i32 %122, i32* %5, align 4
  br label %538

123:                                              ; preds = %31
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @dtrace_priv_proc(i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  store i32 0, i32* %5, align 4
  br label %538

128:                                              ; preds = %123
  %129 = load %struct.TYPE_38__*, %struct.TYPE_38__** @curthread, align 8
  %130 = ptrtoint %struct.TYPE_38__* %129 to i64
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %5, align 4
  br label %538

132:                                              ; preds = %31
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @DTRACE_MSTATE_TIMESTAMP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %132
  %140 = call i32 (...) @dtrace_gethrtime()
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @DTRACE_MSTATE_TIMESTAMP, align 4
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %139, %132
  %149 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %5, align 4
  br label %538

152:                                              ; preds = %31
  %153 = load i32, i32* @dtrace_vtime_references, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @ASSERT(i32 %155)
  %157 = load %struct.TYPE_38__*, %struct.TYPE_38__** @curthread, align 8
  %158 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %5, align 4
  br label %538

160:                                              ; preds = %31
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @DTRACE_MSTATE_WALLTIMESTAMP, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %160
  %168 = call i32 (...) @dtrace_gethrestime()
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @DTRACE_MSTATE_WALLTIMESTAMP, align 4
  %172 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %167, %160
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %5, align 4
  br label %538

180:                                              ; preds = %31
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @DTRACE_MSTATE_EPID, align 4
  %185 = and i32 %183, %184
  %186 = call i32 @ASSERT(i32 %185)
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %5, align 4
  br label %538

190:                                              ; preds = %31
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @DTRACE_MSTATE_PROBE, align 4
  %195 = and i32 %193, %194
  %196 = call i32 @ASSERT(i32 %195)
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 10
  %199 = load %struct.TYPE_41__*, %struct.TYPE_41__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %5, align 4
  br label %538

202:                                              ; preds = %31
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @dtrace_priv_kernel(i32* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %202
  store i32 0, i32* %5, align 4
  br label %538

207:                                              ; preds = %202
  %208 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @DTRACE_MSTATE_STACKDEPTH, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %230, label %214

214:                                              ; preds = %207
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %215, i32 0, i32 10
  %217 = load %struct.TYPE_41__*, %struct.TYPE_41__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 2
  store i32 %220, i32* %14, align 4
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @dtrace_getstackdepth(i32 %221)
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* @DTRACE_MSTATE_STACKDEPTH, align 4
  %226 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %214, %207
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %5, align 4
  br label %538

234:                                              ; preds = %31
  %235 = load i32*, i32** %7, align 8
  %236 = call i32 @dtrace_priv_proc(i32* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  store i32 0, i32* %5, align 4
  br label %538

239:                                              ; preds = %234
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @DTRACE_MSTATE_USTACKDEPTH, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %273, label %246

246:                                              ; preds = %239
  %247 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %247, i32 0, i32 10
  %249 = load %struct.TYPE_41__*, %struct.TYPE_41__** %248, align 8
  %250 = call i32 @DTRACE_ANCHORED(%struct.TYPE_41__* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %246
  %253 = load i32, i32* @CPU, align 4
  %254 = call i32 @CPU_ON_INTR(i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %257, i32 0, i32 7
  store i32 0, i32* %258, align 4
  br label %267

259:                                              ; preds = %252, %246
  %260 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %261 = call i32 @DTRACE_CPUFLAG_SET(i32 %260)
  %262 = call i32 (...) @dtrace_getustackdepth()
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %263, i32 0, i32 7
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %266 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %265)
  br label %267

267:                                              ; preds = %259, %256
  %268 = load i32, i32* @DTRACE_MSTATE_USTACKDEPTH, align 4
  %269 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %267, %239
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %5, align 4
  br label %538

277:                                              ; preds = %31
  %278 = load i32*, i32** %7, align 8
  %279 = call i32 @dtrace_priv_kernel(i32* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %277
  store i32 0, i32* %5, align 4
  br label %538

282:                                              ; preds = %277
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @DTRACE_MSTATE_CALLER, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %338, label %289

289:                                              ; preds = %282
  %290 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %290, i32 0, i32 10
  %292 = load %struct.TYPE_41__*, %struct.TYPE_41__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, 2
  store i32 %295, i32* %15, align 4
  %296 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %296, i32 0, i32 10
  %298 = load %struct.TYPE_41__*, %struct.TYPE_41__** %297, align 8
  %299 = call i32 @DTRACE_ANCHORED(%struct.TYPE_41__* %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %318, label %301

301:                                              ; preds = %289
  %302 = bitcast [2 x i8*]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %302, i8 0, i64 16, i1 false)
  %303 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  %304 = load i32, i32* %15, align 4
  %305 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = inttoptr i64 %310 to i32*
  %312 = call i32 @dtrace_getpcstack(i8** %303, i32 2, i32 %304, i32* %311)
  %313 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 1
  %314 = load i8*, i8** %313, align 8
  %315 = ptrtoint i8* %314 to i32
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %316, i32 0, i32 8
  store i32 %315, i32* %317, align 8
  br label %332

318:                                              ; preds = %289
  %319 = load i32, i32* %15, align 4
  %320 = call i32 @dtrace_caller(i32 %319)
  %321 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %321, i32 0, i32 8
  store i32 %320, i32* %322, align 8
  %323 = icmp eq i32 %320, -1
  br i1 %323, label %324, label %331

324:                                              ; preds = %318
  store i8* null, i8** %17, align 8
  %325 = load i32, i32* %15, align 4
  %326 = call i32 @dtrace_getpcstack(i8** %17, i32 1, i32 %325, i32* null)
  %327 = load i8*, i8** %17, align 8
  %328 = ptrtoint i8* %327 to i32
  %329 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %329, i32 0, i32 8
  store i32 %328, i32* %330, align 8
  br label %331

331:                                              ; preds = %324, %318
  br label %332

332:                                              ; preds = %331, %301
  %333 = load i32, i32* @DTRACE_MSTATE_CALLER, align 4
  %334 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = or i32 %336, %333
  store i32 %337, i32* %335, align 8
  br label %338

338:                                              ; preds = %332, %282
  %339 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %339, i32 0, i32 8
  %341 = load i32, i32* %340, align 8
  store i32 %341, i32* %5, align 4
  br label %538

342:                                              ; preds = %31
  %343 = load i32*, i32** %7, align 8
  %344 = call i32 @dtrace_priv_proc(i32* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %342
  store i32 0, i32* %5, align 4
  br label %538

347:                                              ; preds = %342
  %348 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @DTRACE_MSTATE_UCALLER, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %371, label %354

354:                                              ; preds = %347
  %355 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  store i32 0, i32* %355, align 4
  %356 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %357 = call i32 @DTRACE_CPUFLAG_SET(i32 %356)
  %358 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %359 = call i32 @dtrace_getupcstack(i32* %358, i32 3)
  %360 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %361 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %360)
  %362 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %364, i32 0, i32 9
  store i32 %363, i32* %365, align 4
  %366 = load i32, i32* @DTRACE_MSTATE_UCALLER, align 4
  %367 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 8
  br label %371

371:                                              ; preds = %354, %347
  %372 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %372, i32 0, i32 9
  %374 = load i32, i32* %373, align 4
  store i32 %374, i32* %5, align 4
  br label %538

375:                                              ; preds = %31
  %376 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @DTRACE_MSTATE_PROBE, align 4
  %380 = and i32 %378, %379
  %381 = call i32 @ASSERT(i32 %380)
  %382 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %382, i32 0, i32 10
  %384 = load %struct.TYPE_41__*, %struct.TYPE_41__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %384, i32 0, i32 4
  %386 = load %struct.TYPE_32__*, %struct.TYPE_32__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = sext i32 %388 to i64
  %390 = load i32*, i32** %7, align 8
  %391 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %392 = call i32 @dtrace_dif_varstr(i64 %389, i32* %390, %struct.TYPE_33__* %391)
  store i32 %392, i32* %5, align 4
  br label %538

393:                                              ; preds = %31
  %394 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @DTRACE_MSTATE_PROBE, align 4
  %398 = and i32 %396, %397
  %399 = call i32 @ASSERT(i32 %398)
  %400 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %400, i32 0, i32 10
  %402 = load %struct.TYPE_41__*, %struct.TYPE_41__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = sext i32 %404 to i64
  %406 = load i32*, i32** %7, align 8
  %407 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %408 = call i32 @dtrace_dif_varstr(i64 %405, i32* %406, %struct.TYPE_33__* %407)
  store i32 %408, i32* %5, align 4
  br label %538

409:                                              ; preds = %31
  %410 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* @DTRACE_MSTATE_PROBE, align 4
  %414 = and i32 %412, %413
  %415 = call i32 @ASSERT(i32 %414)
  %416 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %416, i32 0, i32 10
  %418 = load %struct.TYPE_41__*, %struct.TYPE_41__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = sext i32 %420 to i64
  %422 = load i32*, i32** %7, align 8
  %423 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %424 = call i32 @dtrace_dif_varstr(i64 %421, i32* %422, %struct.TYPE_33__* %423)
  store i32 %424, i32* %5, align 4
  br label %538

425:                                              ; preds = %31
  %426 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* @DTRACE_MSTATE_PROBE, align 4
  %430 = and i32 %428, %429
  %431 = call i32 @ASSERT(i32 %430)
  %432 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %432, i32 0, i32 10
  %434 = load %struct.TYPE_41__*, %struct.TYPE_41__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  %438 = load i32*, i32** %7, align 8
  %439 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %440 = call i32 @dtrace_dif_varstr(i64 %437, i32* %438, %struct.TYPE_33__* %439)
  store i32 %440, i32* %5, align 4
  br label %538

441:                                              ; preds = %31
  %442 = load i32*, i32** %7, align 8
  %443 = call i32 @dtrace_priv_proc(i32* %442)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %446, label %445

445:                                              ; preds = %441
  store i32 0, i32* %5, align 4
  br label %538

446:                                              ; preds = %441
  %447 = load %struct.TYPE_39__*, %struct.TYPE_39__** @curproc, align 8
  %448 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  store i32 %449, i32* %5, align 4
  br label %538

450:                                              ; preds = %31
  %451 = load i32*, i32** %7, align 8
  %452 = call i32 @dtrace_priv_proc(i32* %451)
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %455, label %454

454:                                              ; preds = %450
  store i32 0, i32* %5, align 4
  br label %538

455:                                              ; preds = %450
  %456 = load %struct.TYPE_39__*, %struct.TYPE_39__** @curproc, align 8
  %457 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @proc0, i32 0, i32 0), align 4
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %465

461:                                              ; preds = %455
  %462 = load %struct.TYPE_39__*, %struct.TYPE_39__** @curproc, align 8
  %463 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  store i32 %464, i32* %5, align 4
  br label %538

465:                                              ; preds = %455
  %466 = load %struct.TYPE_39__*, %struct.TYPE_39__** @curproc, align 8
  %467 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %466, i32 0, i32 1
  %468 = load %struct.TYPE_42__*, %struct.TYPE_42__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  store i32 %470, i32* %5, align 4
  br label %538

471:                                              ; preds = %31
  %472 = load %struct.TYPE_38__*, %struct.TYPE_38__** @curthread, align 8
  %473 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %472, i32 0, i32 6
  %474 = load i32, i32* %473, align 8
  store i32 %474, i32* %5, align 4
  br label %538

475:                                              ; preds = %31
  %476 = load %struct.TYPE_38__*, %struct.TYPE_38__** @curthread, align 8
  %477 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %476, i32 0, i32 5
  %478 = load %struct.TYPE_45__*, %struct.TYPE_45__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %478, i32 0, i32 1
  %480 = load %struct.pargs*, %struct.pargs** %479, align 8
  store %struct.pargs* %480, %struct.pargs** %19, align 8
  %481 = load %struct.pargs*, %struct.pargs** %19, align 8
  %482 = icmp eq %struct.pargs* %481, null
  br i1 %482, label %483, label %484

483:                                              ; preds = %475
  store i32 0, i32* %5, align 4
  br label %538

484:                                              ; preds = %475
  %485 = load %struct.pargs*, %struct.pargs** %19, align 8
  %486 = getelementptr inbounds %struct.pargs, %struct.pargs* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = sext i32 %487 to i64
  %489 = load %struct.pargs*, %struct.pargs** %19, align 8
  %490 = getelementptr inbounds %struct.pargs, %struct.pargs* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = load i32*, i32** %7, align 8
  %493 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %494 = call i32 @dtrace_dif_varstrz(i64 %488, i32 %491, i32* %492, %struct.TYPE_33__* %493)
  store i32 %494, i32* %5, align 4
  br label %538

495:                                              ; preds = %31
  %496 = load %struct.TYPE_38__*, %struct.TYPE_38__** @curthread, align 8
  %497 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %496, i32 0, i32 5
  %498 = load %struct.TYPE_45__*, %struct.TYPE_45__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = sext i32 %500 to i64
  %502 = load i32*, i32** %7, align 8
  %503 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %504 = call i32 @dtrace_dif_varstr(i64 %501, i32* %502, %struct.TYPE_33__* %503)
  store i32 %504, i32* %5, align 4
  br label %538

505:                                              ; preds = %31
  store i32 0, i32* %5, align 4
  br label %538

506:                                              ; preds = %31
  %507 = load i32*, i32** %7, align 8
  %508 = call i32 @dtrace_priv_proc(i32* %507)
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %511, label %510

510:                                              ; preds = %506
  store i32 0, i32* %5, align 4
  br label %538

511:                                              ; preds = %506
  %512 = load %struct.TYPE_38__*, %struct.TYPE_38__** @curthread, align 8
  %513 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %512, i32 0, i32 3
  %514 = load %struct.TYPE_29__*, %struct.TYPE_29__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 4
  store i32 %516, i32* %5, align 4
  br label %538

517:                                              ; preds = %31
  %518 = load i32*, i32** %7, align 8
  %519 = call i32 @dtrace_priv_proc(i32* %518)
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %522, label %521

521:                                              ; preds = %517
  store i32 0, i32* %5, align 4
  br label %538

522:                                              ; preds = %517
  %523 = load %struct.TYPE_38__*, %struct.TYPE_38__** @curthread, align 8
  %524 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %523, i32 0, i32 3
  %525 = load %struct.TYPE_29__*, %struct.TYPE_29__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  store i32 %527, i32* %5, align 4
  br label %538

528:                                              ; preds = %31
  %529 = load %struct.TYPE_38__*, %struct.TYPE_38__** @curthread, align 8
  %530 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  store i32 %531, i32* %5, align 4
  br label %538

532:                                              ; preds = %31
  %533 = load i64, i64* @curcpu, align 8
  %534 = trunc i64 %533 to i32
  store i32 %534, i32* %5, align 4
  br label %538

535:                                              ; preds = %31
  %536 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %537 = call i32 @DTRACE_CPUFLAG_SET(i32 %536)
  store i32 0, i32* %5, align 4
  br label %538

538:                                              ; preds = %535, %532, %528, %522, %521, %511, %510, %505, %495, %484, %483, %471, %465, %461, %454, %446, %445, %425, %409, %393, %375, %371, %346, %338, %281, %273, %238, %230, %206, %190, %180, %176, %152, %148, %128, %127, %119, %112, %106, %94, %90
  %539 = load i32, i32* %5, align 4
  ret i32 %539
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_getarg(i32, i32) #1

declare dso_local i32 @dtrace_priv_proc(i32*) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i32 @dtrace_getreg(%struct.trapframe*, i32) #1

declare dso_local i32 @dtrace_gethrtime(...) #1

declare dso_local i32 @dtrace_gethrestime(...) #1

declare dso_local i32 @dtrace_priv_kernel(i32*) #1

declare dso_local i32 @dtrace_getstackdepth(i32) #1

declare dso_local i32 @DTRACE_ANCHORED(%struct.TYPE_41__*) #1

declare dso_local i32 @CPU_ON_INTR(i32) #1

declare dso_local i32 @dtrace_getustackdepth(...) #1

declare dso_local i32 @DTRACE_CPUFLAG_CLEAR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dtrace_getpcstack(i8**, i32, i32, i32*) #1

declare dso_local i32 @dtrace_caller(i32) #1

declare dso_local i32 @dtrace_getupcstack(i32*, i32) #1

declare dso_local i32 @dtrace_dif_varstr(i64, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @dtrace_dif_varstrz(i64, i32, i32*, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
