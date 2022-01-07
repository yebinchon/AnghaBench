; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_fake-rfc2553.c_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_fake-rfc2553.c_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, %struct.addrinfo* }
%struct.hostent = type { i64*, i64* }
%struct.servent = type { i64 }
%struct.in_addr = type { i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@EAI_FAMILY = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@EAI_MEMORY = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@EAI_NODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getaddrinfo(i8* %0, i8* %1, %struct.addrinfo* %2, %struct.addrinfo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo**, align 8
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca %struct.servent*, align 8
  %12 = alloca %struct.in_addr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.addrinfo*, align 8
  %18 = alloca %struct.addrinfo*, align 8
  %19 = alloca %struct.in_addr*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %8, align 8
  store %struct.addrinfo** %3, %struct.addrinfo*** %9, align 8
  store i64 0, i64* %14, align 8
  %20 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %21 = icmp ne %struct.addrinfo* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_UNSPEC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EAI_FAMILY, align 4
  store i32 %35, i32* %5, align 4
  br label %223

36:                                               ; preds = %28, %22, %4
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @strtol(i8* %40, i8** %16, i32 10)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i64, i64* %14, align 8
  %46 = icmp sle i64 %45, 65535
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i8*, i8** %16, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* %14, align 8
  %54 = call i64 @htons(i64 %53)
  store i64 %54, i64* %14, align 8
  br label %65

55:                                               ; preds = %47, %44, %39
  %56 = load i8*, i8** %7, align 8
  %57 = call %struct.servent* @getservbyname(i8* %56, i32* null)
  store %struct.servent* %57, %struct.servent** %11, align 8
  %58 = icmp ne %struct.servent* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.servent*, %struct.servent** %11, align 8
  %61 = getelementptr inbounds %struct.servent, %struct.servent* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %14, align 8
  br label %64

63:                                               ; preds = %55
  store i64 0, i64* %14, align 8
  br label %64

64:                                               ; preds = %63, %59
  br label %65

65:                                               ; preds = %64, %52
  br label %66

66:                                               ; preds = %65, %36
  %67 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %68 = icmp ne %struct.addrinfo* %67, null
  br i1 %68, label %69, label %99

69:                                               ; preds = %66
  %70 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %71 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @AI_PASSIVE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %69
  %77 = call i32 @htonl(i32 0)
  store i32 %77, i32* %15, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @inet_aton(i8* %81, %struct.in_addr* %12)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %84, %80, %76
  %88 = load i64, i64* %14, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %91 = call %struct.addrinfo* @malloc_ai(i64 %88, i32 %89, %struct.addrinfo* %90)
  %92 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %91, %struct.addrinfo** %92, align 8
  %93 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %94 = load %struct.addrinfo*, %struct.addrinfo** %93, align 8
  %95 = icmp eq %struct.addrinfo* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %97, i32* %5, align 4
  br label %223

98:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %223

99:                                               ; preds = %69, %66
  %100 = load i8*, i8** %6, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %114, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @htonl(i32 2130706433)
  %105 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %106 = call %struct.addrinfo* @malloc_ai(i64 %103, i32 %104, %struct.addrinfo* %105)
  %107 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %106, %struct.addrinfo** %107, align 8
  %108 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %109 = load %struct.addrinfo*, %struct.addrinfo** %108, align 8
  %110 = icmp eq %struct.addrinfo* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %112, i32* %5, align 4
  br label %223

113:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %223

114:                                              ; preds = %99
  %115 = load i8*, i8** %6, align 8
  %116 = call i64 @inet_aton(i8* %115, %struct.in_addr* %12)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %123 = call %struct.addrinfo* @malloc_ai(i64 %119, i32 %121, %struct.addrinfo* %122)
  %124 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %123, %struct.addrinfo** %124, align 8
  %125 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %126 = load %struct.addrinfo*, %struct.addrinfo** %125, align 8
  %127 = icmp eq %struct.addrinfo* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %129, i32* %5, align 4
  br label %223

130:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %223

131:                                              ; preds = %114
  %132 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %133 = icmp ne %struct.addrinfo* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %136 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @AI_NUMERICHOST, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @EAI_NONAME, align 4
  store i32 %142, i32* %5, align 4
  br label %223

143:                                              ; preds = %134, %131
  %144 = load i8*, i8** %6, align 8
  %145 = call %struct.hostent* @gethostbyname(i8* %144)
  store %struct.hostent* %145, %struct.hostent** %10, align 8
  %146 = load %struct.hostent*, %struct.hostent** %10, align 8
  %147 = icmp ne %struct.hostent* %146, null
  br i1 %147, label %148, label %221

148:                                              ; preds = %143
  %149 = load %struct.hostent*, %struct.hostent** %10, align 8
  %150 = getelementptr inbounds %struct.hostent, %struct.hostent* %149, i32 0, i32 1
  %151 = load i64*, i64** %150, align 8
  %152 = icmp ne i64* %151, null
  br i1 %152, label %153, label %221

153:                                              ; preds = %148
  %154 = load %struct.hostent*, %struct.hostent** %10, align 8
  %155 = getelementptr inbounds %struct.hostent, %struct.hostent* %154, i32 0, i32 1
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %221

160:                                              ; preds = %153
  %161 = load %struct.hostent*, %struct.hostent** %10, align 8
  %162 = getelementptr inbounds %struct.hostent, %struct.hostent* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %221

167:                                              ; preds = %160
  %168 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %168, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %18, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %17, align 8
  store i32 0, i32* %13, align 4
  br label %169

169:                                              ; preds = %217, %167
  %170 = load %struct.hostent*, %struct.hostent** %10, align 8
  %171 = getelementptr inbounds %struct.hostent, %struct.hostent* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %220

178:                                              ; preds = %169
  %179 = load %struct.hostent*, %struct.hostent** %10, align 8
  %180 = getelementptr inbounds %struct.hostent, %struct.hostent* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to %struct.in_addr*
  store %struct.in_addr* %186, %struct.in_addr** %19, align 8
  %187 = load i64, i64* %14, align 8
  %188 = load %struct.in_addr*, %struct.in_addr** %19, align 8
  %189 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %192 = call %struct.addrinfo* @malloc_ai(i64 %187, i32 %190, %struct.addrinfo* %191)
  store %struct.addrinfo* %192, %struct.addrinfo** %17, align 8
  %193 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %194 = icmp eq %struct.addrinfo* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %178
  %196 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %197 = load %struct.addrinfo*, %struct.addrinfo** %196, align 8
  %198 = icmp ne %struct.addrinfo* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %201 = load %struct.addrinfo*, %struct.addrinfo** %200, align 8
  %202 = call i32 @freeaddrinfo(%struct.addrinfo* %201)
  br label %203

203:                                              ; preds = %199, %195
  %204 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %204, i32* %5, align 4
  br label %223

205:                                              ; preds = %178
  %206 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %207 = icmp ne %struct.addrinfo* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %210 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %211 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %210, i32 0, i32 2
  store %struct.addrinfo* %209, %struct.addrinfo** %211, align 8
  br label %215

212:                                              ; preds = %205
  %213 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %214 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %213, %struct.addrinfo** %214, align 8
  br label %215

215:                                              ; preds = %212, %208
  %216 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  store %struct.addrinfo* %216, %struct.addrinfo** %18, align 8
  br label %217

217:                                              ; preds = %215
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %13, align 4
  br label %169

220:                                              ; preds = %169
  store i32 0, i32* %5, align 4
  br label %223

221:                                              ; preds = %160, %153, %148, %143
  %222 = load i32, i32* @EAI_NODATA, align 4
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %221, %220, %203, %141, %130, %128, %113, %111, %98, %96, %34
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local %struct.servent* @getservbyname(i8*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local %struct.addrinfo* @malloc_ai(i64, i32, %struct.addrinfo*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
