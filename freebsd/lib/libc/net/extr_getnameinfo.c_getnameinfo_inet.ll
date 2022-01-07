; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnameinfo.c_getnameinfo_inet.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnameinfo.c_getnameinfo_inet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afd = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.servent = type { i8* }
%struct.hostent = type { i8* }
%struct.sockaddr_in = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@NI_NUMERICSERV = common dso_local global i32 0, align 4
@NI_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@EAI_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NAMEREQD = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@EAI_SYSTEM = common dso_local global i32 0, align 4
@NI_NOFQDN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afd*, %struct.sockaddr*, i32, i8*, i64, i8*, i64, i32)* @getnameinfo_inet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnameinfo_inet(%struct.afd* %0, %struct.sockaddr* %1, i32 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.afd*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.servent*, align 8
  %19 = alloca %struct.hostent*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [512 x i8], align 16
  %25 = alloca [512 x i8], align 16
  %26 = alloca i64, align 8
  store %struct.afd* %0, %struct.afd** %10, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %28 = bitcast %struct.sockaddr* %27 to %struct.sockaddr_in*
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %20, align 4
  %31 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %32 = bitcast %struct.sockaddr* %31 to i8*
  %33 = load %struct.afd*, %struct.afd** %10, align 8
  %34 = getelementptr inbounds %struct.afd, %struct.afd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  store i8* %37, i8** %21, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %8
  %41 = load i64, i64* %16, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %8
  br label %99

44:                                               ; preds = %40
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @NI_NUMERICSERV, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store %struct.servent* null, %struct.servent** %18, align 8
  br label %59

50:                                               ; preds = %44
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* @NI_DGRAM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %58 = call %struct.servent* @getservbyport(i32 %51, i8* %57)
  store %struct.servent* %58, %struct.servent** %18, align 8
  br label %59

59:                                               ; preds = %50, %49
  %60 = load %struct.servent*, %struct.servent** %18, align 8
  %61 = icmp ne %struct.servent* %60, null
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load %struct.servent*, %struct.servent** %18, align 8
  %64 = getelementptr inbounds %struct.servent, %struct.servent* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %16, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %72, i32* %9, align 4
  br label %235

73:                                               ; preds = %62
  %74 = load i8*, i8** %15, align 8
  %75 = load %struct.servent*, %struct.servent** %18, align 8
  %76 = getelementptr inbounds %struct.servent, %struct.servent* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @strlcpy(i8* %74, i8* %77, i64 %78)
  br label %98

80:                                               ; preds = %59
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %24, i64 0, i64 0
  %82 = load i32, i32* %20, align 4
  %83 = call i32 @ntohs(i32 %82)
  %84 = call i32 @snprintf(i8* %81, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %24, i64 0, i64 0
  %86 = call i32 @strlen(i8* %85)
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %16, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %92, i32* %9, align 4
  br label %235

93:                                               ; preds = %80
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %24, i64 0, i64 0
  %96 = load i64, i64* %16, align 8
  %97 = call i32 @strlcpy(i8* %94, i8* %95, i64 %96)
  br label %98

98:                                               ; preds = %93, %73
  br label %99

99:                                               ; preds = %98, %43
  %100 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %101 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %126 [
    i32 129, label %103
  ]

103:                                              ; preds = %99
  %104 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %105 = bitcast %struct.sockaddr* %104 to %struct.sockaddr_in*
  %106 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ntohl(i32 %108)
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %22, align 4
  %111 = call i32 @IN_MULTICAST(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %22, align 4
  %115 = call i32 @IN_EXPERIMENTAL(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %22, align 4
  %119 = call i32 @IN_ZERONET(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117, %113, %103
  %122 = load i32, i32* @NI_NUMERICHOST, align 4
  %123 = load i32, i32* %17, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %99, %125
  %127 = load i8*, i8** %13, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i64, i64* %14, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %126
  br label %234

133:                                              ; preds = %129
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @NI_NUMERICHOST, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %175

138:                                              ; preds = %133
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* @NI_NAMEREQD, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @EAI_NONAME, align 4
  store i32 %144, i32* %9, align 4
  br label %235

145:                                              ; preds = %138
  %146 = load %struct.afd*, %struct.afd** %10, align 8
  %147 = getelementptr inbounds %struct.afd, %struct.afd* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  switch i32 %148, label %149 [
  ]

149:                                              ; preds = %145
  %150 = load %struct.afd*, %struct.afd** %10, align 8
  %151 = getelementptr inbounds %struct.afd, %struct.afd* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %21, align 8
  %154 = getelementptr inbounds [512 x i8], [512 x i8]* %25, i64 0, i64 0
  %155 = call i32* @inet_ntop(i32 %152, i8* %153, i8* %154, i64 512)
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i32, i32* @EAI_SYSTEM, align 4
  store i32 %158, i32* %9, align 4
  br label %235

159:                                              ; preds = %149
  %160 = getelementptr inbounds [512 x i8], [512 x i8]* %25, i64 0, i64 0
  %161 = call i32 @strlen(i8* %160)
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %26, align 8
  %163 = load i64, i64* %26, align 8
  %164 = add i64 %163, 1
  %165 = load i64, i64* %14, align 8
  %166 = icmp ugt i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %168, i32* %9, align 4
  br label %235

169:                                              ; preds = %159
  %170 = load i8*, i8** %13, align 8
  %171 = getelementptr inbounds [512 x i8], [512 x i8]* %25, i64 0, i64 0
  %172 = load i64, i64* %14, align 8
  %173 = call i32 @strlcpy(i8* %170, i8* %171, i64 %172)
  br label %174

174:                                              ; preds = %169
  br label %233

175:                                              ; preds = %133
  %176 = load i8*, i8** %21, align 8
  %177 = load %struct.afd*, %struct.afd** %10, align 8
  %178 = getelementptr inbounds %struct.afd, %struct.afd* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.afd*, %struct.afd** %10, align 8
  %181 = getelementptr inbounds %struct.afd, %struct.afd* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call %struct.hostent* @getipnodebyaddr(i8* %176, i32 %179, i32 %182, i32* %23)
  store %struct.hostent* %183, %struct.hostent** %19, align 8
  %184 = load %struct.hostent*, %struct.hostent** %19, align 8
  %185 = icmp ne %struct.hostent* %184, null
  br i1 %185, label %186, label %208

186:                                              ; preds = %175
  %187 = load %struct.hostent*, %struct.hostent** %19, align 8
  %188 = getelementptr inbounds %struct.hostent, %struct.hostent* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @strlen(i8* %189)
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %14, align 8
  %194 = icmp ugt i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %186
  %196 = load %struct.hostent*, %struct.hostent** %19, align 8
  %197 = call i32 @freehostent(%struct.hostent* %196)
  %198 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %198, i32* %9, align 4
  br label %235

199:                                              ; preds = %186
  %200 = load i8*, i8** %13, align 8
  %201 = load %struct.hostent*, %struct.hostent** %19, align 8
  %202 = getelementptr inbounds %struct.hostent, %struct.hostent* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load i64, i64* %14, align 8
  %205 = call i32 @strlcpy(i8* %200, i8* %203, i64 %204)
  %206 = load %struct.hostent*, %struct.hostent** %19, align 8
  %207 = call i32 @freehostent(%struct.hostent* %206)
  br label %232

208:                                              ; preds = %175
  %209 = load i32, i32* %17, align 4
  %210 = load i32, i32* @NI_NAMEREQD, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load i32, i32* @EAI_NONAME, align 4
  store i32 %214, i32* %9, align 4
  br label %235

215:                                              ; preds = %208
  %216 = load %struct.afd*, %struct.afd** %10, align 8
  %217 = getelementptr inbounds %struct.afd, %struct.afd* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  switch i32 %218, label %219 [
  ]

219:                                              ; preds = %215
  %220 = load %struct.afd*, %struct.afd** %10, align 8
  %221 = getelementptr inbounds %struct.afd, %struct.afd* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i8*, i8** %21, align 8
  %224 = load i8*, i8** %13, align 8
  %225 = load i64, i64* %14, align 8
  %226 = call i32* @inet_ntop(i32 %222, i8* %223, i8* %224, i64 %225)
  %227 = icmp eq i32* %226, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %219
  %229 = load i32, i32* @EAI_SYSTEM, align 4
  store i32 %229, i32* %9, align 4
  br label %235

230:                                              ; preds = %219
  br label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %231, %199
  br label %233

233:                                              ; preds = %232, %174
  br label %234

234:                                              ; preds = %233, %132
  store i32 0, i32* %9, align 4
  br label %235

235:                                              ; preds = %234, %228, %213, %195, %167, %157, %143, %91, %71
  %236 = load i32, i32* %9, align 4
  ret i32 %236
}

declare dso_local %struct.servent* @getservbyport(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @IN_MULTICAST(i32) #1

declare dso_local i32 @IN_EXPERIMENTAL(i32) #1

declare dso_local i32 @IN_ZERONET(i32) #1

declare dso_local i32* @inet_ntop(i32, i8*, i8*, i64) #1

declare dso_local %struct.hostent* @getipnodebyaddr(i8*, i32, i32, i32*) #1

declare dso_local i32 @freehostent(%struct.hostent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
