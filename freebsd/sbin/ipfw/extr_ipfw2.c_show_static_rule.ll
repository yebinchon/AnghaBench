; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_show_static_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_show_static_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_opts = type { i64, i64, i64, i64 }
%struct.format_opts = type { i32, i64, i64 }
%struct.buf_pr = type { i32 }
%struct.ip_fw_rule = type { i32, i32, i32 }
%struct.ip_fw_bcounter = type { i64, i32, i32 }
%struct.show_state = type { i32 }
%struct.TYPE_4__ = type { i32 }

@show_static_rule.twidth = internal global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"# DISABLED \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"init_show_state() failed\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%05u \00", align 1
@TIMESTAMP_NUMERIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%10u \00", align 1
@TIMESTAMP_STRING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"set %d \00", align 1
@O_PROB = common dso_local global i32 0, align 4
@action_opcodes = common dso_local global i32* null, align 8
@modifier_opcodes = common dso_local global i32* null, align 8
@IPFW_RULE_JUSTOPTS = common dso_local global i32 0, align 4
@HAVE_PROTO = common dso_local global i32 0, align 4
@HAVE_SRCIP = common dso_local global i32 0, align 4
@HAVE_DSTIP = common dso_local global i32 0, align 4
@IPFW_RULE_NOOPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c" from\00", align 1
@src_opcodes = common dso_local global i32* null, align 8
@O_IP_SRCPORT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c" to\00", align 1
@dst_opcodes = common dso_local global i32* null, align 8
@O_IP_DSTPORT = common dso_local global i32 0, align 4
@O_NOP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c" // ...\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdline_opts*, %struct.format_opts*, %struct.buf_pr*, %struct.ip_fw_rule*, %struct.ip_fw_bcounter*)* @show_static_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_static_rule(%struct.cmdline_opts* %0, %struct.format_opts* %1, %struct.buf_pr* %2, %struct.ip_fw_rule* %3, %struct.ip_fw_bcounter* %4) #0 {
  %6 = alloca %struct.cmdline_opts*, align 8
  %7 = alloca %struct.format_opts*, align 8
  %8 = alloca %struct.buf_pr*, align 8
  %9 = alloca %struct.ip_fw_rule*, align 8
  %10 = alloca %struct.ip_fw_bcounter*, align 8
  %11 = alloca %struct.show_state, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [30 x i8], align 16
  %15 = alloca i32, align 4
  store %struct.cmdline_opts* %0, %struct.cmdline_opts** %6, align 8
  store %struct.format_opts* %1, %struct.format_opts** %7, align 8
  store %struct.buf_pr* %2, %struct.buf_pr** %8, align 8
  store %struct.ip_fw_rule* %3, %struct.ip_fw_rule** %9, align 8
  store %struct.ip_fw_bcounter* %4, %struct.ip_fw_bcounter** %10, align 8
  %16 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %17 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %9, align 8
  %20 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %18, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %5
  %26 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %27 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %271

31:                                               ; preds = %25
  %32 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %33 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34, %5
  %36 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %9, align 8
  %37 = call i64 @init_show_state(%struct.show_state* %11, %struct.ip_fw_rule* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %271

41:                                               ; preds = %35
  %42 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %43 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %9, align 8
  %44 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %48 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %41
  %52 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %53 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51, %41
  %57 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %58 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %10, align 8
  %59 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %58, i32 0, i32 2
  %60 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %61 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @pr_u64(%struct.buf_pr* %57, i32* %59, i64 %62)
  %64 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %65 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %10, align 8
  %66 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %65, i32 0, i32 1
  %67 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %68 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @pr_u64(%struct.buf_pr* %64, i32* %66, i64 %69)
  br label %71

71:                                               ; preds = %56, %51
  %72 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %73 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TIMESTAMP_NUMERIC, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %79 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %10, align 8
  %80 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  br label %124

83:                                               ; preds = %71
  %84 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %85 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TIMESTAMP_STRING, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %123

89:                                               ; preds = %83
  store i32 0, i32* %15, align 4
  %90 = load i32, i32* @show_static_rule.twidth, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %94 = call i32 @ctime(i32* %15)
  %95 = call i32 @strcpy(i8* %93, i32 %94)
  %96 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %97 = call i8* @strchr(i8* %96, i8 signext 10)
  store i8 0, i8* %97, align 1
  %98 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %99 = call i32 @strlen(i8* %98)
  store i32 %99, i32* @show_static_rule.twidth, align 4
  br label %100

100:                                              ; preds = %92, %89
  %101 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %10, align 8
  %102 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %10, align 8
  %107 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @_long_to_time(i64 %108)
  store i32 %109, i32* %15, align 4
  %110 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %111 = call i32 @ctime(i32* %15)
  %112 = call i32 @strcpy(i8* %110, i32 %111)
  %113 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %114 = call i8* @strchr(i8* %113, i8 signext 10)
  store i8 0, i8* %114, align 1
  %115 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %116 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %117 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %116)
  br label %122

118:                                              ; preds = %100
  %119 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %120 = load i32, i32* @show_static_rule.twidth, align 4
  %121 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %105
  br label %123

123:                                              ; preds = %122, %83
  br label %124

124:                                              ; preds = %123, %77
  %125 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %126 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %131 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %9, align 8
  %132 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %129, %124
  %136 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %137 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %138 = load i32, i32* @O_PROB, align 4
  %139 = call %struct.TYPE_4__* @print_opcode(%struct.buf_pr* %136, %struct.format_opts* %137, %struct.show_state* %11, i32 %138)
  store %struct.TYPE_4__* %139, %struct.TYPE_4__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %164, %135
  %141 = load i32, i32* %13, align 4
  %142 = load i32*, i32** @action_opcodes, align 8
  %143 = call i32 @nitems(i32* %142)
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %167

145:                                              ; preds = %140
  %146 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %147 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %148 = load i32*, i32** @action_opcodes, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call %struct.TYPE_4__* @print_action(%struct.buf_pr* %146, %struct.format_opts* %147, %struct.show_state* %11, i32 %152)
  store %struct.TYPE_4__* %153, %struct.TYPE_4__** %12, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %155 = icmp eq %struct.TYPE_4__* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %145
  br label %164

157:                                              ; preds = %145
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  switch i32 %160, label %163 [
    i32 130, label %161
    i32 129, label %162
    i32 128, label %162
  ]

161:                                              ; preds = %157
  br label %252

162:                                              ; preds = %157, %157
  br label %164

163:                                              ; preds = %157
  br label %167

164:                                              ; preds = %162, %156
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %140

167:                                              ; preds = %163, %140
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %182, %167
  %169 = load i32, i32* %13, align 4
  %170 = load i32*, i32** @modifier_opcodes, align 8
  %171 = call i32 @nitems(i32* %170)
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %175 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %176 = load i32*, i32** @modifier_opcodes, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.TYPE_4__* @print_action(%struct.buf_pr* %174, %struct.format_opts* %175, %struct.show_state* %11, i32 %180)
  br label %182

182:                                              ; preds = %173
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %168

185:                                              ; preds = %168
  %186 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %187 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %252

191:                                              ; preds = %185
  %192 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %9, align 8
  %193 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @IPFW_RULE_JUSTOPTS, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %191
  %199 = load i32, i32* @HAVE_PROTO, align 4
  %200 = load i32, i32* @HAVE_SRCIP, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @HAVE_DSTIP, align 4
  %203 = or i32 %201, %202
  %204 = getelementptr inbounds %struct.show_state, %struct.show_state* %11, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %203
  store i32 %206, i32* %204, align 4
  br label %244

207:                                              ; preds = %191
  %208 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %209 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %210 = call i32 @print_proto(%struct.buf_pr* %208, %struct.format_opts* %209, %struct.show_state* %11)
  %211 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %212 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %207
  %216 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %9, align 8
  %217 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @IPFW_RULE_NOOPT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  br label %244

223:                                              ; preds = %215, %207
  %224 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %225 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %226 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %227 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %228 = load i32*, i32** @src_opcodes, align 8
  %229 = load i32*, i32** @src_opcodes, align 8
  %230 = call i32 @nitems(i32* %229)
  %231 = load i32, i32* @O_IP_SRCPORT, align 4
  %232 = load i32, i32* @HAVE_SRCIP, align 4
  %233 = call i32 @print_address(%struct.buf_pr* %226, %struct.format_opts* %227, %struct.show_state* %11, i32* %228, i32 %230, i32 %231, i32 %232)
  %234 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %235 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %236 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %237 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %238 = load i32*, i32** @dst_opcodes, align 8
  %239 = load i32*, i32** @dst_opcodes, align 8
  %240 = call i32 @nitems(i32* %239)
  %241 = load i32, i32* @O_IP_DSTPORT, align 4
  %242 = load i32, i32* @HAVE_DSTIP, align 4
  %243 = call i32 @print_address(%struct.buf_pr* %236, %struct.format_opts* %237, %struct.show_state* %11, i32* %238, i32 %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %223, %222, %198
  br label %245

245:                                              ; preds = %250, %244
  %246 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %247 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %248 = call %struct.TYPE_4__* @print_opcode(%struct.buf_pr* %246, %struct.format_opts* %247, %struct.show_state* %11, i32 -1)
  %249 = icmp ne %struct.TYPE_4__* %248, null
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  br label %245

251:                                              ; preds = %245
  br label %252

252:                                              ; preds = %251, %190, %161
  %253 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %254 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %255 = load i32, i32* @O_NOP, align 4
  %256 = call %struct.TYPE_4__* @print_opcode(%struct.buf_pr* %253, %struct.format_opts* %254, %struct.show_state* %11, i32 %255)
  store %struct.TYPE_4__* %256, %struct.TYPE_4__** %12, align 8
  %257 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %258 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %252
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %263 = icmp eq %struct.TYPE_4__* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %266 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %265, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %267

267:                                              ; preds = %264, %261, %252
  %268 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %269 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %270 = call i32 @free_show_state(%struct.show_state* %11)
  br label %271

271:                                              ; preds = %267, %39, %30
  ret void
}

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, ...) #1

declare dso_local i64 @init_show_state(%struct.show_state*, %struct.ip_fw_rule*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @pr_u64(%struct.buf_pr*, i32*, i64) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @ctime(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @_long_to_time(i64) #1

declare dso_local %struct.TYPE_4__* @print_opcode(%struct.buf_pr*, %struct.format_opts*, %struct.show_state*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local %struct.TYPE_4__* @print_action(%struct.buf_pr*, %struct.format_opts*, %struct.show_state*, i32) #1

declare dso_local i32 @print_proto(%struct.buf_pr*, %struct.format_opts*, %struct.show_state*) #1

declare dso_local i32 @print_address(%struct.buf_pr*, %struct.format_opts*, %struct.show_state*, i32*, i32, i32, i32) #1

declare dso_local i32 @free_show_state(%struct.show_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
