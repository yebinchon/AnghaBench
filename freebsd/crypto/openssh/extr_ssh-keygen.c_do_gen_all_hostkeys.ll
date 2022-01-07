; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_gen_all_hostkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_gen_all_hostkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }
%struct.anon = type { i8*, i8*, i8* }
%struct.stat = type { i64 }
%struct.sshkey = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ed25519\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ED25519\00", align 1
@_PATH_HOST_ED25519_KEY_FILE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@identity_file = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Could not stat %s: %s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s%s.XXXXXXXXXX\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s%s.pub.XXXXXXXXXX\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s%s.pub\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: generating new host keys: \00", align 1
@__progname = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Could not save your public key in %s: %s\00", align 1
@bits = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"sshkey_generate failed: %s\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"sshkey_from_private failed: %s\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@hostname = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@use_new_format = common dso_local global i32 0, align 4
@new_format_cipher = common dso_local global i32 0, align 4
@rounds = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"Saving key \22%s\22 failed: %s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"fdopen %s failed: %s\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"write key failed: %s\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"key close failed: %s\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Unable to move %s into position: %s\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_PATH_HOST_DSA_KEY_FILE = common dso_local global i32* null, align 8
@_PATH_HOST_ECDSA_KEY_FILE = common dso_local global i32* null, align 8
@_PATH_HOST_RSA_KEY_FILE = common dso_local global i32* null, align 8
@_PATH_HOST_XMSS_KEY_FILE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*)* @do_gen_all_hostkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_gen_all_hostkeys(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca [2 x %struct.anon], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca %struct.sshkey*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  %18 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 0
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 2
  %22 = load i32*, i32** @_PATH_HOST_ED25519_KEY_FILE, align 8
  %23 = bitcast i32* %22 to i8*
  store i8* %23, i8** %21, align 8
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %18, i64 1
  %25 = bitcast %struct.anon* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %249, %1
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %252

33:                                               ; preds = %26
  store %struct.sshkey* null, %struct.sshkey** %6, align 8
  store %struct.sshkey* null, %struct.sshkey** %7, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %9, align 8
  %34 = load i32, i32* @identity_file, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @xasprintf(i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %34, i8* %39)
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @stat(i8* %41, %struct.stat* %5)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %236

49:                                               ; preds = %44
  br label %64

50:                                               ; preds = %33
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @ENOENT, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* @errno, align 8
  %61 = call i8* @strerror(i64 %60)
  %62 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %59, i8* %61)
  br label %234

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32, i32* @identity_file, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @xasprintf(i8** %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %65, i8* %70)
  %72 = load i32, i32* @identity_file, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @xasprintf(i8** %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %72, i8* %77)
  %79 = load i32, i32* @identity_file, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @xasprintf(i8** %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %79, i8* %84)
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  %89 = load i8*, i8** @__progname, align 8
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %88, %64
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* @stdout, align 4
  %99 = call i32 @fflush(i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @sshkey_type_from_name(i8* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @mkstemp(i8* %106)
  store i32 %107, i32* %15, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %114

109:                                              ; preds = %91
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* @errno, align 8
  %112 = call i8* @strerror(i64 %111)
  %113 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %110, i8* %112)
  br label %234

114:                                              ; preds = %91
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @close(i32 %115)
  store i64 0, i64* @bits, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @type_bits_valid(i32 %117, i32* null, i64* @bits)
  %119 = load i32, i32* %14, align 4
  %120 = load i64, i64* @bits, align 8
  %121 = call i32 @sshkey_generate(i32 %119, i64 %120, %struct.sshkey** %6)
  store i32 %121, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load i32, i32* %16, align 4
  %125 = call i8* @ssh_err(i32 %124)
  %126 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %125)
  br label %234

127:                                              ; preds = %114
  %128 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %129 = call i32 @sshkey_from_private(%struct.sshkey* %128, %struct.sshkey** %7)
  store i32 %129, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* %16, align 4
  %133 = call i8* @ssh_err(i32 %132)
  %134 = call i32 @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %137 = load %struct.passwd*, %struct.passwd** %2, align 8
  %138 = getelementptr inbounds %struct.passwd, %struct.passwd* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** @hostname, align 8
  %141 = call i32 @snprintf(i8* %136, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %139, i8* %140)
  %142 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %145 = load i32, i32* @use_new_format, align 4
  %146 = load i32, i32* @new_format_cipher, align 4
  %147 = load i32, i32* @rounds, align 4
  %148 = call i32 @sshkey_save_private(%struct.sshkey* %142, i8* %143, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %135
  %151 = load i8*, i8** %9, align 8
  %152 = load i32, i32* %16, align 4
  %153 = call i8* @ssh_err(i32 %152)
  %154 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* %151, i8* %153)
  br label %234

155:                                              ; preds = %135
  %156 = load i8*, i8** %10, align 8
  %157 = call i32 @mkstemp(i8* %156)
  store i32 %157, i32* %15, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i8*, i8** %10, align 8
  %161 = load i64, i64* @errno, align 8
  %162 = call i8* @strerror(i64 %161)
  %163 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %160, i8* %162)
  br label %234

164:                                              ; preds = %155
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @fchmod(i32 %165, i32 420)
  %167 = load i32, i32* %15, align 4
  %168 = call i32* @fdopen(i32 %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i32* %168, i32** %17, align 8
  %169 = load i32*, i32** %17, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load i8*, i8** %10, align 8
  %173 = load i64, i64* @errno, align 8
  %174 = call i8* @strerror(i64 %173)
  %175 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* %172, i8* %174)
  %176 = load i32, i32* %15, align 4
  %177 = call i32 @close(i32 %176)
  br label %234

178:                                              ; preds = %164
  %179 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %180 = load i32*, i32** %17, align 8
  %181 = call i32 @sshkey_write(%struct.sshkey* %179, i32* %180)
  store i32 %181, i32* %16, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load i32, i32* %16, align 4
  %185 = call i8* @ssh_err(i32 %184)
  %186 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %185)
  %187 = load i32*, i32** %17, align 8
  %188 = call i64 @fclose(i32* %187)
  br label %234

189:                                              ; preds = %178
  %190 = load i32*, i32** %17, align 8
  %191 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %192 = call i32 @fprintf(i32* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* %191)
  %193 = load i32*, i32** %17, align 8
  %194 = call i64 @ferror(i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %189
  %197 = load i64, i64* @errno, align 8
  %198 = call i8* @strerror(i64 %197)
  %199 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %198)
  %200 = load i32*, i32** %17, align 8
  %201 = call i64 @fclose(i32* %200)
  br label %234

202:                                              ; preds = %189
  %203 = load i32*, i32** %17, align 8
  %204 = call i64 @fclose(i32* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load i64, i64* @errno, align 8
  %208 = call i8* @strerror(i64 %207)
  %209 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* %208)
  br label %234

210:                                              ; preds = %202
  %211 = load i8*, i8** %10, align 8
  %212 = load i8*, i8** %12, align 8
  %213 = call i64 @rename(i8* %211, i8* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load i8*, i8** %12, align 8
  %217 = load i64, i64* @errno, align 8
  %218 = call i8* @strerror(i64 %217)
  %219 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* %216, i8* %218)
  br label %234

220:                                              ; preds = %210
  %221 = load i8*, i8** %9, align 8
  %222 = load i8*, i8** %11, align 8
  %223 = call i64 @rename(i8* %221, i8* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %220
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %3, i64 0, i64 %227
  %229 = getelementptr inbounds %struct.anon, %struct.anon* %228, i32 0, i32 2
  %230 = load i8*, i8** %229, align 8
  %231 = load i64, i64* @errno, align 8
  %232 = call i8* @strerror(i64 %231)
  %233 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* %230, i8* %232)
  br label %234

234:                                              ; preds = %225, %215, %206, %196, %183, %171, %159, %150, %123, %109, %54
  store i32 0, i32* %4, align 4
  br label %236

235:                                              ; preds = %220
  br label %236

236:                                              ; preds = %235, %234, %48
  %237 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %238 = call i32 @sshkey_free(%struct.sshkey* %237)
  %239 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %240 = call i32 @sshkey_free(%struct.sshkey* %239)
  %241 = load i8*, i8** %9, align 8
  %242 = call i32 @free(i8* %241)
  %243 = load i8*, i8** %10, align 8
  %244 = call i32 @free(i8* %243)
  %245 = load i8*, i8** %11, align 8
  %246 = call i32 @free(i8* %245)
  %247 = load i8*, i8** %12, align 8
  %248 = call i32 @free(i8* %247)
  br label %249

249:                                              ; preds = %236
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %13, align 4
  br label %26

252:                                              ; preds = %26
  %253 = load i32, i32* %4, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  br label %257

257:                                              ; preds = %255, %252
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @error(i8*, i8*, ...) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @sshkey_type_from_name(i8*) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @type_bits_valid(i32, i32*, i64*) #2

declare dso_local i32 @sshkey_generate(i32, i64, %struct.sshkey**) #2

declare dso_local i8* @ssh_err(i32) #2

declare dso_local i32 @sshkey_from_private(%struct.sshkey*, %struct.sshkey**) #2

declare dso_local i32 @fatal(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @sshkey_save_private(%struct.sshkey*, i8*, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @fchmod(i32, i32) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @sshkey_write(%struct.sshkey*, i32*) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i32 @sshkey_free(%struct.sshkey*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
