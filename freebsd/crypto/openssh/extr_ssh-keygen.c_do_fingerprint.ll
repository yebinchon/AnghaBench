; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_do_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.sshkey = type { i32 }

@have_identity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Enter file in which the key is\00", align 1
@identity_file = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s: %s: %s\00", align 1
@__progname = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"PRIVATE KEY\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s:%lu: not a public key\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"%s is not a public key file.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*)* @do_fingerprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fingerprint(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  store %struct.sshkey* null, %struct.sshkey** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @have_identity, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.passwd*, %struct.passwd** %2, align 8
  %19 = call i32 @ask_filename(%struct.passwd* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i8*, i8** @identity_file, align 8
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** @identity_file, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32*, i32** @stdin, align 8
  store i32* %26, i32** %3, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %40

27:                                               ; preds = %20
  %28 = load i8*, i8** %12, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %29, i32** %3, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* @__progname, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %34, i8* %35, i32 %37)
  br label %39

39:                                               ; preds = %31, %27
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %211, %178, %167, %67, %40
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @getline(i8** %8, i64* %9, i32* %42)
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %217

45:                                               ; preds = %41
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @strcspn(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @strspn(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 35
  br i1 %61, label %67, label %62

62:                                               ; preds = %45
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %45
  br label %41

68:                                               ; preds = %62
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i8*, i8** @identity_file, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i8*, i8** %6, align 8
  %77 = call i32* @strstr(i8* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @fclose(i32* %82)
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @fingerprint_private(i8* %84)
  %86 = call i32 @exit(i32 0) #3
  unreachable

87:                                               ; preds = %75, %71, %68
  %88 = call %struct.sshkey* @try_read_key(i8** %6)
  store %struct.sshkey* %88, %struct.sshkey** %4, align 8
  %89 = icmp eq %struct.sshkey* %88, null
  br i1 %89, label %90, label %172

90:                                               ; preds = %87
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @strtol(i8* %91, i8** %7, i32 10)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %7, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %7, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 32
  br i1 %102, label %103, label %171

103:                                              ; preds = %98
  %104 = load i8*, i8** %7, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 9
  br i1 %107, label %108, label %171

108:                                              ; preds = %103, %95, %90
  store i32 0, i32* %14, align 4
  %109 = load i8*, i8** %6, align 8
  store i8* %109, i8** %5, align 8
  br label %110

110:                                              ; preds = %160, %108
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %115
  %119 = load i8*, i8** %6, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 32
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i8*, i8** %6, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 9
  br label %128

128:                                              ; preds = %123, %118
  %129 = phi i1 [ false, %118 ], [ %127, %123 ]
  br label %130

130:                                              ; preds = %128, %115
  %131 = phi i1 [ true, %115 ], [ %129, %128 ]
  br label %132

132:                                              ; preds = %130, %110
  %133 = phi i1 [ false, %110 ], [ %131, %130 ]
  br i1 %133, label %134, label %163

134:                                              ; preds = %132
  %135 = load i8*, i8** %6, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 92
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 34
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %6, align 8
  br label %159

148:                                              ; preds = %139, %134
  %149 = load i8*, i8** %6, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 34
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %14, align 4
  br label %158

158:                                              ; preds = %153, %148
  br label %159

159:                                              ; preds = %158, %145
  br label %160

160:                                              ; preds = %159
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %6, align 8
  br label %110

163:                                              ; preds = %132
  %164 = load i8*, i8** %6, align 8
  %165 = load i8, i8* %164, align 1
  %166 = icmp ne i8 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  br label %41

168:                                              ; preds = %163
  %169 = load i8*, i8** %6, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %6, align 8
  store i8 0, i8* %169, align 1
  br label %171

171:                                              ; preds = %168, %103, %98
  br label %172

172:                                              ; preds = %171, %87
  %173 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %174 = icmp eq %struct.sshkey* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = call %struct.sshkey* @try_read_key(i8** %6)
  store %struct.sshkey* %176, %struct.sshkey** %4, align 8
  %177 = icmp eq %struct.sshkey* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i8*, i8** %12, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %179, i32 %180)
  br label %41

182:                                              ; preds = %175, %172
  br label %183

183:                                              ; preds = %196, %182
  %184 = load i8*, i8** %6, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 32
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = load i8*, i8** %6, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 9
  br label %193

193:                                              ; preds = %188, %183
  %194 = phi i1 [ true, %183 ], [ %192, %188 ]
  br i1 %194, label %195, label %199

195:                                              ; preds = %193
  br label %196

196:                                              ; preds = %195
  %197 = load i8*, i8** %6, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %6, align 8
  br label %183

199:                                              ; preds = %193
  %200 = load i8*, i8** %6, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load i8*, i8** %6, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 35
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i8*, i8** %6, align 8
  store i8* %210, i8** %5, align 8
  br label %211

211:                                              ; preds = %209, %204, %199
  %212 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %213 = load i8*, i8** %5, align 8
  %214 = call i32 @fingerprint_one_key(%struct.sshkey* %212, i8* %213)
  %215 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %216 = call i32 @sshkey_free(%struct.sshkey* %215)
  store i32 0, i32* %11, align 4
  br label %41

217:                                              ; preds = %41
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 @fclose(i32* %218)
  %220 = load i8*, i8** %8, align 8
  %221 = call i32 @free(i8* %220)
  %222 = load i32, i32* %11, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %217
  %225 = load i8*, i8** %12, align 8
  %226 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %225)
  br label %227

227:                                              ; preds = %224, %217
  %228 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @ask_filename(%struct.passwd*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fatal(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fingerprint_private(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.sshkey* @try_read_key(i8**) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @debug(i8*, i8*, i32) #1

declare dso_local i32 @fingerprint_one_key(%struct.sshkey*, i8*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
