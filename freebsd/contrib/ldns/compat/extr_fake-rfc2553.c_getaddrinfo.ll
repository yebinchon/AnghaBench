; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_fake-rfc2553.c_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_fake-rfc2553.c_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, %struct.addrinfo* }
%struct.hostent = type { i64*, i64* }
%struct.servent = type { i64 }
%struct.in_addr = type { i32 }

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
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strtol(i8* %23, i8** %16, i32 10)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i64, i64* %14, align 8
  %29 = icmp sle i64 %28, 65535
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i8*, i8** %16, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* %14, align 8
  %37 = call i64 @htons(i64 %36)
  store i64 %37, i64* %14, align 8
  br label %48

38:                                               ; preds = %30, %27, %22
  %39 = load i8*, i8** %7, align 8
  %40 = call %struct.servent* @getservbyname(i8* %39, i32* null)
  store %struct.servent* %40, %struct.servent** %11, align 8
  %41 = icmp ne %struct.servent* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.servent*, %struct.servent** %11, align 8
  %44 = getelementptr inbounds %struct.servent, %struct.servent* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %14, align 8
  br label %47

46:                                               ; preds = %38
  store i64 0, i64* %14, align 8
  br label %47

47:                                               ; preds = %46, %42
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %51 = icmp ne %struct.addrinfo* %50, null
  br i1 %51, label %52, label %82

52:                                               ; preds = %49
  %53 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AI_PASSIVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %52
  %60 = call i32 @htonl(i32 0)
  store i32 %60, i32* %15, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @inet_aton(i8* %64, %struct.in_addr* %12)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %67, %63, %59
  %71 = load i64, i64* %14, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %74 = call %struct.addrinfo* @malloc_ai(i64 %71, i32 %72, %struct.addrinfo* %73)
  %75 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %74, %struct.addrinfo** %75, align 8
  %76 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %77 = load %struct.addrinfo*, %struct.addrinfo** %76, align 8
  %78 = icmp eq %struct.addrinfo* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %80, i32* %5, align 4
  br label %206

81:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %206

82:                                               ; preds = %52, %49
  %83 = load i8*, i8** %6, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %97, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @htonl(i32 2130706433)
  %88 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %89 = call %struct.addrinfo* @malloc_ai(i64 %86, i32 %87, %struct.addrinfo* %88)
  %90 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %89, %struct.addrinfo** %90, align 8
  %91 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %92 = load %struct.addrinfo*, %struct.addrinfo** %91, align 8
  %93 = icmp eq %struct.addrinfo* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %95, i32* %5, align 4
  br label %206

96:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %206

97:                                               ; preds = %82
  %98 = load i8*, i8** %6, align 8
  %99 = call i64 @inet_aton(i8* %98, %struct.in_addr* %12)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i64, i64* %14, align 8
  %103 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %106 = call %struct.addrinfo* @malloc_ai(i64 %102, i32 %104, %struct.addrinfo* %105)
  %107 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %106, %struct.addrinfo** %107, align 8
  %108 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %109 = load %struct.addrinfo*, %struct.addrinfo** %108, align 8
  %110 = icmp eq %struct.addrinfo* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %112, i32* %5, align 4
  br label %206

113:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %206

114:                                              ; preds = %97
  %115 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %116 = icmp ne %struct.addrinfo* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @AI_NUMERICHOST, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* @EAI_NONAME, align 4
  store i32 %125, i32* %5, align 4
  br label %206

126:                                              ; preds = %117, %114
  %127 = load i8*, i8** %6, align 8
  %128 = call %struct.hostent* @gethostbyname(i8* %127)
  store %struct.hostent* %128, %struct.hostent** %10, align 8
  %129 = load %struct.hostent*, %struct.hostent** %10, align 8
  %130 = icmp ne %struct.hostent* %129, null
  br i1 %130, label %131, label %204

131:                                              ; preds = %126
  %132 = load %struct.hostent*, %struct.hostent** %10, align 8
  %133 = getelementptr inbounds %struct.hostent, %struct.hostent* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = icmp ne i64* %134, null
  br i1 %135, label %136, label %204

136:                                              ; preds = %131
  %137 = load %struct.hostent*, %struct.hostent** %10, align 8
  %138 = getelementptr inbounds %struct.hostent, %struct.hostent* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %204

143:                                              ; preds = %136
  %144 = load %struct.hostent*, %struct.hostent** %10, align 8
  %145 = getelementptr inbounds %struct.hostent, %struct.hostent* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %204

150:                                              ; preds = %143
  %151 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %151, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %18, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %17, align 8
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %200, %150
  %153 = load %struct.hostent*, %struct.hostent** %10, align 8
  %154 = getelementptr inbounds %struct.hostent, %struct.hostent* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %203

161:                                              ; preds = %152
  %162 = load %struct.hostent*, %struct.hostent** %10, align 8
  %163 = getelementptr inbounds %struct.hostent, %struct.hostent* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to %struct.in_addr*
  store %struct.in_addr* %169, %struct.in_addr** %19, align 8
  %170 = load i64, i64* %14, align 8
  %171 = load %struct.in_addr*, %struct.in_addr** %19, align 8
  %172 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %175 = call %struct.addrinfo* @malloc_ai(i64 %170, i32 %173, %struct.addrinfo* %174)
  store %struct.addrinfo* %175, %struct.addrinfo** %17, align 8
  %176 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %177 = icmp eq %struct.addrinfo* %176, null
  br i1 %177, label %178, label %188

178:                                              ; preds = %161
  %179 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %180 = load %struct.addrinfo*, %struct.addrinfo** %179, align 8
  %181 = icmp ne %struct.addrinfo* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %184 = load %struct.addrinfo*, %struct.addrinfo** %183, align 8
  %185 = call i32 @freeaddrinfo(%struct.addrinfo* %184)
  br label %186

186:                                              ; preds = %182, %178
  %187 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %187, i32* %5, align 4
  br label %206

188:                                              ; preds = %161
  %189 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %190 = icmp ne %struct.addrinfo* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %193 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %194 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %193, i32 0, i32 1
  store %struct.addrinfo* %192, %struct.addrinfo** %194, align 8
  br label %198

195:                                              ; preds = %188
  %196 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %197 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %196, %struct.addrinfo** %197, align 8
  br label %198

198:                                              ; preds = %195, %191
  %199 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  store %struct.addrinfo* %199, %struct.addrinfo** %18, align 8
  br label %200

200:                                              ; preds = %198
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %13, align 4
  br label %152

203:                                              ; preds = %152
  store i32 0, i32* %5, align 4
  br label %206

204:                                              ; preds = %143, %136, %131, %126
  %205 = load i32, i32* @EAI_NODATA, align 4
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %204, %203, %186, %124, %113, %111, %96, %94, %81, %79
  %207 = load i32, i32* %5, align 4
  ret i32 %207
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
