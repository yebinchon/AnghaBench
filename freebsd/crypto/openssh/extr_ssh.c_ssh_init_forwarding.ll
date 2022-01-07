; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_ssh_init_forwarding.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_ssh_init_forwarding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i8*, i8*, i64, i32, i32*, i32*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i8*, i32, i32*, i32*, i32 }
%struct.ssh = type { i32 }

@options = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [69 x i8] c"Local connections to %.200s:%d forwarded to remote address %.200s:%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"LOCALHOST\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Could not request local forwarding.\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Remote connections from %.200s:%d forwarded to local address %.200s:%d\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Could not request remote forwarding.\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Warning: Could not request remote forwarding.\00", align 1
@ssh_confirm_remote_forward = common dso_local global i32 0, align 4
@SSH_TUNMODE_NO = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"Could not request tunnel forwarding.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, i8**)* @ssh_init_forwarding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssh_init_forwarding(%struct.ssh* %0, i8** %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %96, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 0), align 8
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %99

11:                                               ; preds = %7
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 8), align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 8), align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %48

26:                                               ; preds = %11
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 8), align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 7, i32 0), align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  br label %46

39:                                               ; preds = %26
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 8), align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = phi i8* [ %38, %34 ], [ %45, %39 ]
  br label %48

48:                                               ; preds = %46, %19
  %49 = phi i8* [ %25, %19 ], [ %47, %46 ]
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 8), align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 8), align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %48
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 8), align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  br label %77

70:                                               ; preds = %48
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 8), align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  br label %77

77:                                               ; preds = %70, %63
  %78 = phi i32* [ %69, %63 ], [ %76, %70 ]
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 8), align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %49, i32 %55, i32* %78, i32 %84)
  %86 = load %struct.ssh*, %struct.ssh** %3, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 8), align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %89
  %91 = call i64 @channel_setup_local_fwd_listener(%struct.ssh* %86, %struct.TYPE_8__* %90, %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 7))
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %77
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %7

99:                                               ; preds = %7
  %100 = load i32, i32* %6, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 3), align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %106, %102, %99
  %112 = load i32, i32* %6, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %114, %111
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %229, %119
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 1), align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %232

124:                                              ; preds = %120
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %124
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  br label %157

139:                                              ; preds = %124
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %155

148:                                              ; preds = %139
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  br label %155

155:                                              ; preds = %148, %147
  %156 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %147 ], [ %154, %148 ]
  br label %157

157:                                              ; preds = %155, %132
  %158 = phi i8* [ %138, %132 ], [ %156, %155 ]
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 5
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %179

172:                                              ; preds = %157
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  br label %186

179:                                              ; preds = %157
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  br label %186

186:                                              ; preds = %179, %172
  %187 = phi i32* [ %178, %172 ], [ %185, %179 ]
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i8* %158, i32 %164, i32* %187, i32 %193)
  %195 = load %struct.ssh*, %struct.ssh** %3, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 %198
  %200 = call i64 @channel_request_remote_forwarding(%struct.ssh* %195, %struct.TYPE_7__* %199)
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  store i64 %200, i64* %205, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %186
  %214 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 3), align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = call i32 @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %220

218:                                              ; preds = %213
  %219 = call i32 @logit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %216
  br label %228

221:                                              ; preds = %186
  %222 = load i32, i32* @ssh_confirm_remote_forward, align 4
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 6), align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 %225
  %227 = call i32 @client_register_global_confirm(i32 %222, %struct.TYPE_7__* %226)
  br label %228

228:                                              ; preds = %221, %220
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  br label %120

232:                                              ; preds = %120
  %233 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 2), align 8
  %234 = load i64, i64* @SSH_TUNMODE_NO, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %253

236:                                              ; preds = %232
  %237 = load %struct.ssh*, %struct.ssh** %3, align 8
  %238 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 2), align 8
  %239 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 5), align 4
  %240 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 4), align 8
  %241 = call i8* @client_request_tun_fwd(%struct.ssh* %237, i64 %238, i32 %239, i32 %240)
  %242 = load i8**, i8*** %4, align 8
  store i8* %241, i8** %242, align 8
  %243 = icmp eq i8* %241, null
  br i1 %243, label %244, label %252

244:                                              ; preds = %236
  %245 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 3), align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = call i32 @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %251

249:                                              ; preds = %244
  %250 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %251

251:                                              ; preds = %249, %247
  br label %252

252:                                              ; preds = %251, %236
  br label %253

253:                                              ; preds = %252, %232
  ret void
}

declare dso_local i32 @debug(i8*, i8*, i32, i32*, i32) #1

declare dso_local i64 @channel_setup_local_fwd_listener(%struct.ssh*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @channel_request_remote_forwarding(%struct.ssh*, %struct.TYPE_7__*) #1

declare dso_local i32 @logit(i8*) #1

declare dso_local i32 @client_register_global_confirm(i32, %struct.TYPE_7__*) #1

declare dso_local i8* @client_request_tun_fwd(%struct.ssh*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
