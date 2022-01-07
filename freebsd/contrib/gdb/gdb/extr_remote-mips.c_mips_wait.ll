; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.target_waitstatus = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i32, i8* }

@DATA_MAXLEN = common dso_local global i32 0, align 4
@interrupt_count = common dso_local global i64 0, align 8
@hit_watchpoint = common dso_local global i32 0, align 4
@mips_need_reply = common dso_local global i32 0, align 4
@TARGET_WAITKIND_STOPPED = common dso_local global i8* null, align 8
@TARGET_SIGNAL_TRAP = common dso_local global i8* null, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@mips_wait_flag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Remote failure: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@mips_monitor = common dso_local global i64 0, align 8
@MON_PMON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"0x%*x %*c 0x%*x 0x%*x 0x%x 0x%x 0x%x 0x%*x %s\00", align 1
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@SP_REGNUM = common dso_local global i32 0, align 4
@DEPRECATED_FP_REGNUM = common dso_local global i32 0, align 4
@target_shortname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"lsi\00", align 1
@TARGET_WAITKIND_EXITED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"_exit\00", align 1
@TARGET_WAITKIND_SIGNALLED = common dso_local global i8* null, align 8
@BREAK_FETCH = common dso_local global i64 0, align 8
@MAX_LSI_BREAKPOINTS = common dso_local global i32 0, align 4
@lsi_breakpoints = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target_waitstatus*)* @mips_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_wait(i32 %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.target_waitstatus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [20 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %5, align 8
  %23 = load i32, i32* @DATA_MAXLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  store i64 0, i64* @interrupt_count, align 8
  store i32 0, i32* @hit_watchpoint, align 4
  %27 = load i32, i32* @mips_need_reply, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %2
  %30 = load i8*, i8** @TARGET_WAITKIND_STOPPED, align 8
  %31 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %32 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @TARGET_SIGNAL_TRAP, align 8
  %34 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %35 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* @inferior_ptid, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %199

38:                                               ; preds = %2
  store i32 1, i32* @mips_wait_flag, align 4
  %39 = call i32 @mips_request(i8 signext 0, i32 0, i32 0, i32* %7, i32 -1, i8* %26)
  store i32 %39, i32* %6, align 4
  store i32 0, i32* @mips_wait_flag, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @safe_strerror(i32 %43)
  %45 = call i32 @mips_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i64, i64* @mips_monitor, align 8
  %48 = load i64, i64* @MON_PMON, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = call i32 (...) @mips_exit_debug()
  %52 = call i32 (...) @mips_enter_debug()
  br label %53

53:                                               ; preds = %50, %46
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %55 = call i32 @sscanf(i8* %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32* %11, i32* %12, i8* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp sge i32 %56, 3
  br i1 %57, label %58, label %122

58:                                               ; preds = %53
  %59 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %17, align 8
  %62 = alloca i8, i64 %60, align 16
  store i64 %60, i64* %18, align 8
  %63 = load i32, i32* @PC_REGNUM, align 4
  %64 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @store_unsigned_integer(i8* %62, i32 %64, i32 %65)
  %67 = load i32, i32* @PC_REGNUM, align 4
  %68 = call i32 @supply_register(i32 %67, i8* %62)
  %69 = load i32, i32* @PC_REGNUM, align 4
  %70 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @store_unsigned_integer(i8* %62, i32 %70, i32 %71)
  %73 = call i32 @supply_register(i32 30, i8* %62)
  %74 = load i32, i32* @SP_REGNUM, align 4
  %75 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @store_unsigned_integer(i8* %62, i32 %75, i32 %76)
  %78 = load i32, i32* @SP_REGNUM, align 4
  %79 = call i32 @supply_register(i32 %78, i8* %62)
  %80 = load i32, i32* @DEPRECATED_FP_REGNUM, align 4
  %81 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %80)
  %82 = call i32 @store_unsigned_integer(i8* %62, i32 %81, i32 0)
  %83 = load i32, i32* @DEPRECATED_FP_REGNUM, align 4
  %84 = call i32 @supply_register(i32 %83, i8* %62)
  %85 = load i32, i32* %14, align 4
  %86 = icmp eq i32 %85, 9
  br i1 %86, label %87, label %120

87:                                               ; preds = %58
  store i32 0, i32* %19, align 4
  br label %88

88:                                               ; preds = %116, %87
  %89 = load i32, i32* %19, align 4
  %90 = icmp sle i32 %89, 2
  br i1 %90, label %91, label %119

91:                                               ; preds = %88
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 114
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 119
  br i1 %104, label %105, label %106

105:                                              ; preds = %98, %91
  store i32 1, i32* @hit_watchpoint, align 4
  br label %115

106:                                              ; preds = %98
  %107 = load i32, i32* %19, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %119

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %105
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %19, align 4
  br label %88

119:                                              ; preds = %113, %88
  br label %120

120:                                              ; preds = %119, %58
  %121 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %121)
  br label %122

122:                                              ; preds = %120, %53
  %123 = load i8*, i8** @target_shortname, align 8
  %124 = call i64 @strcmp(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i32, i32* %14, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 1, i32* @hit_watchpoint, align 4
  br label %133

133:                                              ; preds = %132, %129, %126
  br label %134

134:                                              ; preds = %133, %122
  %135 = load i32, i32* %6, align 4
  %136 = and i32 %135, 255
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load i8*, i8** @TARGET_WAITKIND_EXITED, align 8
  %140 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %141 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* %6, align 4
  %143 = ashr i32 %142, 8
  %144 = and i32 %143, 255
  %145 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %146 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  br label %197

148:                                              ; preds = %134
  %149 = load i32, i32* %6, align 4
  %150 = and i32 %149, 255
  %151 = icmp eq i32 %150, 127
  br i1 %151, label %152, label %186

152:                                              ; preds = %148
  %153 = load i8*, i8** @TARGET_WAITKIND_STOPPED, align 8
  %154 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %155 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* %6, align 4
  %157 = ashr i32 %156, 8
  %158 = and i32 %157, 255
  %159 = call i8* @mips_signal_from_protocol(i32 %158)
  %160 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %161 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  %163 = load i8*, i8** @target_shortname, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %152
  %167 = call i64 (...) @read_pc()
  store i64 %167, i64* %22, align 8
  %168 = load i64, i64* %22, align 8
  %169 = call i32 @find_pc_partial_function(i64 %168, i8** %20, i64* %21, i32* null)
  %170 = load i8*, i8** %20, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %166
  %173 = load i8*, i8** %20, align 8
  %174 = call i64 @strcmp(i8* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = load i64, i64* %21, align 8
  %178 = load i64, i64* %22, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i8*, i8** @TARGET_WAITKIND_EXITED, align 8
  %182 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %183 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %180, %176, %172, %166
  br label %185

185:                                              ; preds = %184, %152
  br label %196

186:                                              ; preds = %148
  %187 = load i8*, i8** @TARGET_WAITKIND_SIGNALLED, align 8
  %188 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %189 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load i32, i32* %6, align 4
  %191 = and i32 %190, 127
  %192 = call i8* @mips_signal_from_protocol(i32 %191)
  %193 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %194 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  store i8* %192, i8** %195, align 8
  br label %196

196:                                              ; preds = %186, %185
  br label %197

197:                                              ; preds = %196, %138
  %198 = load i32, i32* @inferior_ptid, align 4
  store i32 %198, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %199

199:                                              ; preds = %197, %29
  %200 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mips_request(i8 signext, i32, i32, i32*, i32, i8*) #2

declare dso_local i32 @mips_error(i8*, i32) #2

declare dso_local i32 @safe_strerror(i32) #2

declare dso_local i32 @mips_exit_debug(...) #2

declare dso_local i32 @mips_enter_debug(...) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i8*) #2

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #2

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #2

declare dso_local i32 @supply_register(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @mips_signal_from_protocol(i32) #2

declare dso_local i64 @read_pc(...) #2

declare dso_local i32 @find_pc_partial_function(i64, i8**, i64*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
