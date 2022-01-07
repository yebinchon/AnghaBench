; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_nat_show_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_nat_show_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat44_cfg_nat = type { i8*, i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nat44_cfg_redir = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.nat44_cfg_spool = type { i32, %struct.TYPE_2__ }
%struct.protoent = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"ipfw nat %s config\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" if %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" ip %s\00", align 1
@PKT_ALIAS_LOG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" log\00", align 1
@PKT_ALIAS_DENY_INCOMING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c" deny_in\00", align 1
@PKT_ALIAS_SAME_PORTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c" same_ports\00", align 1
@PKT_ALIAS_SKIP_GLOBAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c" skip_global\00", align 1
@PKT_ALIAS_UNREGISTERED_ONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c" unreg_only\00", align 1
@PKT_ALIAS_RESET_ON_ADDR_CHANGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c" reset\00", align 1
@PKT_ALIAS_REVERSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c" reverse\00", align 1
@PKT_ALIAS_PROXY_ONLY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c" proxy_only\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c" redirect_addr\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c" redirect_port %s \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"-%u\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c":%u\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c" redirect_proto %s %s\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [19 x i8] c"unknown redir mode\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nat44_cfg_nat*, i8*)* @nat_show_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat_show_cfg(%struct.nat44_cfg_nat* %0, i8* %1) #0 {
  %3 = alloca %struct.nat44_cfg_nat*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nat44_cfg_redir*, align 8
  %9 = alloca %struct.nat44_cfg_spool*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.protoent*, align 8
  store %struct.nat44_cfg_nat* %0, %struct.nat44_cfg_nat** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %13 = bitcast %struct.nat44_cfg_nat* %12 to i32*
  store i32* %13, i32** %10, align 8
  store i32 32, i32* %7, align 4
  %14 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %15 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %19 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %25 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %30 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %36 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @inet_ntoa(i64 %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %34, %28
  br label %42

42:                                               ; preds = %41, %23
  br label %43

43:                                               ; preds = %175, %42
  %44 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %45 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %176

48:                                               ; preds = %43
  %49 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %50 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PKT_ALIAS_LOG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @PKT_ALIAS_LOG, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %60 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %175

63:                                               ; preds = %48
  %64 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %65 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PKT_ALIAS_DENY_INCOMING, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @PKT_ALIAS_DENY_INCOMING, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %75 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %174

78:                                               ; preds = %63
  %79 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %80 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PKT_ALIAS_SAME_PORTS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* @PKT_ALIAS_SAME_PORTS, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %90 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %173

93:                                               ; preds = %78
  %94 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %95 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @PKT_ALIAS_SKIP_GLOBAL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i32, i32* @PKT_ALIAS_SKIP_GLOBAL, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %105 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %172

108:                                              ; preds = %93
  %109 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %110 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @PKT_ALIAS_UNREGISTERED_ONLY, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %117 = load i32, i32* @PKT_ALIAS_UNREGISTERED_ONLY, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %120 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %171

123:                                              ; preds = %108
  %124 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %125 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @PKT_ALIAS_RESET_ON_ADDR_CHANGE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %123
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %132 = load i32, i32* @PKT_ALIAS_RESET_ON_ADDR_CHANGE, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %135 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %170

138:                                              ; preds = %123
  %139 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %140 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @PKT_ALIAS_REVERSE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %138
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %147 = load i32, i32* @PKT_ALIAS_REVERSE, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %150 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %169

153:                                              ; preds = %138
  %154 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %155 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @PKT_ALIAS_PROXY_ONLY, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %153
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %162 = load i32, i32* @PKT_ALIAS_PROXY_ONLY, align 4
  %163 = xor i32 %162, -1
  %164 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %165 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %160, %153
  br label %169

169:                                              ; preds = %168, %145
  br label %170

170:                                              ; preds = %169, %130
  br label %171

171:                                              ; preds = %170, %115
  br label %172

172:                                              ; preds = %171, %100
  br label %173

173:                                              ; preds = %172, %85
  br label %174

174:                                              ; preds = %173, %70
  br label %175

175:                                              ; preds = %174, %55
  br label %43

176:                                              ; preds = %43
  store i32 0, i32* %6, align 4
  br label %177

177:                                              ; preds = %449, %176
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %180 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %452

183:                                              ; preds = %177
  %184 = load i32*, i32** %10, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = bitcast i32* %187 to %struct.nat44_cfg_redir*
  store %struct.nat44_cfg_redir* %188, %struct.nat44_cfg_redir** %8, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 %190, 64
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %7, align 4
  %193 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %194 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  switch i32 %195, label %445 [
    i32 130, label %196
    i32 129, label %250
    i32 128, label %405
  ]

196:                                              ; preds = %183
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %198 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %199 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %196
  %203 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %204 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %203, i32 0, i32 9
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i8* @inet_ntoa(i64 %206)
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %207)
  br label %243

209:                                              ; preds = %196
  store i32 0, i32* %5, align 4
  br label %210

210:                                              ; preds = %239, %209
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %213 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %242

216:                                              ; preds = %210
  %217 = load i32*, i32** %10, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = bitcast i32* %220 to %struct.nat44_cfg_spool*
  store %struct.nat44_cfg_spool* %221, %struct.nat44_cfg_spool** %9, align 8
  %222 = load i32, i32* %5, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %228

226:                                              ; preds = %216
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %228

228:                                              ; preds = %226, %224
  %229 = load %struct.nat44_cfg_spool*, %struct.nat44_cfg_spool** %9, align 8
  %230 = getelementptr inbounds %struct.nat44_cfg_spool, %struct.nat44_cfg_spool* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i8* @inet_ntoa(i64 %232)
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %233)
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = add i64 %236, 16
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %228
  %240 = load i32, i32* %5, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %5, align 4
  br label %210

242:                                              ; preds = %210
  br label %243

243:                                              ; preds = %242, %202
  %244 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %245 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %244, i32 0, i32 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i8* @inet_ntoa(i64 %247)
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %248)
  br label %448

250:                                              ; preds = %183
  %251 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %252 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %251, i32 0, i32 10
  %253 = load i32, i32* %252, align 8
  %254 = call %struct.protoent* @getprotobynumber(i32 %253)
  store %struct.protoent* %254, %struct.protoent** %11, align 8
  %255 = load %struct.protoent*, %struct.protoent** %11, align 8
  %256 = getelementptr inbounds %struct.protoent, %struct.protoent* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %257)
  %259 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %260 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %288, label %263

263:                                              ; preds = %250
  %264 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %265 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %264, i32 0, i32 9
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = call i8* @inet_ntoa(i64 %267)
  %269 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %270 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %268, i32 %271)
  %273 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %274 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = icmp sgt i32 %275, 1
  br i1 %276, label %277, label %287

277:                                              ; preds = %263
  %278 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %279 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %282 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %280, %283
  %285 = sub nsw i32 %284, 1
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %285)
  br label %287

287:                                              ; preds = %277, %263
  br label %323

288:                                              ; preds = %250
  store i32 0, i32* %5, align 4
  br label %289

289:                                              ; preds = %319, %288
  %290 = load i32, i32* %5, align 4
  %291 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %292 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp slt i32 %290, %293
  br i1 %294, label %295, label %322

295:                                              ; preds = %289
  %296 = load i32*, i32** %10, align 8
  %297 = load i32, i32* %7, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = bitcast i32* %299 to %struct.nat44_cfg_spool*
  store %struct.nat44_cfg_spool* %300, %struct.nat44_cfg_spool** %9, align 8
  %301 = load i32, i32* %5, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %295
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %305

305:                                              ; preds = %303, %295
  %306 = load %struct.nat44_cfg_spool*, %struct.nat44_cfg_spool** %9, align 8
  %307 = getelementptr inbounds %struct.nat44_cfg_spool, %struct.nat44_cfg_spool* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = call i8* @inet_ntoa(i64 %309)
  %311 = load %struct.nat44_cfg_spool*, %struct.nat44_cfg_spool** %9, align 8
  %312 = getelementptr inbounds %struct.nat44_cfg_spool, %struct.nat44_cfg_spool* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %310, i32 %313)
  %315 = load i32, i32* %7, align 4
  %316 = sext i32 %315 to i64
  %317 = add i64 %316, 16
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %7, align 4
  br label %319

319:                                              ; preds = %305
  %320 = load i32, i32* %5, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %5, align 4
  br label %289

322:                                              ; preds = %289
  br label %323

323:                                              ; preds = %322, %287
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %325 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %326 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %325, i32 0, i32 8
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %323
  %331 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %332 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %331, i32 0, i32 8
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = call i8* @inet_ntoa(i64 %334)
  %336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %335)
  br label %337

337:                                              ; preds = %330, %323
  %338 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %339 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 %340)
  %342 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %343 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %361, label %346

346:                                              ; preds = %337
  %347 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %348 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = icmp sgt i32 %349, 1
  br i1 %350, label %351, label %361

351:                                              ; preds = %346
  %352 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %353 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %356 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = add nsw i32 %354, %357
  %359 = sub nsw i32 %358, 1
  %360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %359)
  br label %361

361:                                              ; preds = %351, %346, %337
  %362 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %363 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %362, i32 0, i32 7
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %404

367:                                              ; preds = %361
  %368 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %369 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %368, i32 0, i32 7
  %370 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = call i8* @inet_ntoa(i64 %371)
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %372)
  %374 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %375 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %403

378:                                              ; preds = %367
  %379 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %380 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %379, i32 0, i32 5
  %381 = load i32, i32* %380, align 4
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %381)
  %383 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %384 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %402, label %387

387:                                              ; preds = %378
  %388 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %389 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 8
  %391 = icmp sgt i32 %390, 1
  br i1 %391, label %392, label %402

392:                                              ; preds = %387
  %393 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %394 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %393, i32 0, i32 5
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %397 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %396, i32 0, i32 6
  %398 = load i32, i32* %397, align 8
  %399 = add nsw i32 %395, %398
  %400 = sub nsw i32 %399, 1
  %401 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %400)
  br label %402

402:                                              ; preds = %392, %387, %378
  br label %403

403:                                              ; preds = %402, %367
  br label %404

404:                                              ; preds = %403, %361
  br label %448

405:                                              ; preds = %183
  %406 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %407 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %406, i32 0, i32 10
  %408 = load i32, i32* %407, align 8
  %409 = call %struct.protoent* @getprotobynumber(i32 %408)
  store %struct.protoent* %409, %struct.protoent** %11, align 8
  %410 = load %struct.protoent*, %struct.protoent** %11, align 8
  %411 = getelementptr inbounds %struct.protoent, %struct.protoent* %410, i32 0, i32 0
  %412 = load i8*, i8** %411, align 8
  %413 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %414 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %413, i32 0, i32 9
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = call i8* @inet_ntoa(i64 %416)
  %418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i8* %412, i8* %417)
  %419 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %420 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %419, i32 0, i32 8
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %444

424:                                              ; preds = %405
  %425 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %426 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %425, i32 0, i32 8
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = call i8* @inet_ntoa(i64 %428)
  %430 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %429)
  %431 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %432 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %431, i32 0, i32 7
  %433 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %443

436:                                              ; preds = %424
  %437 = load %struct.nat44_cfg_redir*, %struct.nat44_cfg_redir** %8, align 8
  %438 = getelementptr inbounds %struct.nat44_cfg_redir, %struct.nat44_cfg_redir* %437, i32 0, i32 7
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = call i8* @inet_ntoa(i64 %440)
  %442 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %441)
  br label %443

443:                                              ; preds = %436, %424
  br label %444

444:                                              ; preds = %443, %405
  br label %448

445:                                              ; preds = %183
  %446 = load i32, i32* @EX_DATAERR, align 4
  %447 = call i32 @errx(i32 %446, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  br label %448

448:                                              ; preds = %445, %444, %404, %243
  br label %449

449:                                              ; preds = %448
  %450 = load i32, i32* %6, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %6, align 4
  br label %177

452:                                              ; preds = %177
  %453 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @inet_ntoa(i64) #1

declare dso_local %struct.protoent* @getprotobynumber(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
