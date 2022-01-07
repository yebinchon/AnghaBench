; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_rfc2553.c_do_nodename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_rfc2553.c_do_nodename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i8*, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.hostent = type { i8*, i32, i32, i32 }
%struct.sockaddr_in = type { i16, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in6 = type { i16, %struct.TYPE_5__ }
%struct.sockaddr = type { i8* }

@EAI_MEMORY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@TRY_AGAIN = common dso_local global i32 0, align 4
@EAI_AGAIN = common dso_local global i32 0, align 4
@AI_CANONNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.addrinfo*, %struct.addrinfo*)* @do_nodename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_nodename(i8* %0, %struct.addrinfo* %1, %struct.addrinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %7, align 8
  store %struct.hostent* null, %struct.hostent** %8, align 8
  %12 = call %struct.TYPE_6__* @calloc(i32 4, i32 1)
  %13 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 4
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %14, align 8
  %15 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %20, i32* %4, align 4
  br label %215

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  %25 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** @AF_INET, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 1
  store i32 8, i32* %32, align 8
  %33 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = bitcast %struct.TYPE_6__* %35 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %36, %struct.sockaddr_in** %9, align 8
  %37 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %39 to i16
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 0
  store i16 %40, i16* %42, align 4
  %43 = load i32, i32* @INADDR_ANY, align 4
  %44 = call i32 @htonl(i32 %43)
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  br label %61

48:                                               ; preds = %24
  %49 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 1
  store i32 8, i32* %50, align 8
  %51 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = bitcast %struct.TYPE_6__* %53 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %54, %struct.sockaddr_in6** %10, align 8
  %55 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %57 to i16
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 0
  store i16 %58, i16* %60, align 4
  br label %61

61:                                               ; preds = %48, %30
  store i32 0, i32* %4, align 4
  br label %215

62:                                               ; preds = %21
  %63 = load i8*, i8** %5, align 8
  %64 = call i32* @strchr(i8* %63, i8 signext 58)
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %90

66:                                               ; preds = %62
  %67 = load i8*, i8** @AF_INET6, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = bitcast %struct.TYPE_6__* %71 to %struct.sockaddr_in6*
  %73 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %72, i32 0, i32 1
  %74 = call i32 @inet_pton(i8* %67, i8* %68, %struct.TYPE_5__* %73)
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %89

76:                                               ; preds = %66
  %77 = load i8*, i8** @AF_INET6, align 8
  %78 = ptrtoint i8* %77 to i16
  %79 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %79, i32 0, i32 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = bitcast %struct.TYPE_6__* %81 to %struct.sockaddr_in6*
  %83 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %82, i32 0, i32 0
  store i16 %78, i16* %83, align 4
  %84 = load i8*, i8** @AF_INET6, align 8
  %85 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %87, i32 0, i32 1
  store i32 8, i32* %88, align 8
  store i32 0, i32* %4, align 4
  br label %215

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %89, %62
  %91 = load i8*, i8** @AF_INET, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %94 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %93, i32 0, i32 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = bitcast %struct.TYPE_6__* %95 to %struct.sockaddr_in*
  %97 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %96, i32 0, i32 1
  %98 = call i32 @inet_pton(i8* %91, i8* %92, %struct.TYPE_5__* %97)
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %112

100:                                              ; preds = %90
  %101 = load i8*, i8** @AF_INET, align 8
  %102 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %103 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %102, i32 0, i32 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = bitcast %struct.TYPE_6__* %104 to %struct.sockaddr*
  %106 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %105, i32 0, i32 0
  store i8* %101, i8** %106, align 8
  %107 = load i8*, i8** @AF_INET, align 8
  %108 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %109 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %111 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %110, i32 0, i32 1
  store i32 8, i32* %111, align 8
  store i32 0, i32* %4, align 4
  br label %215

112:                                              ; preds = %90
  %113 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %114 = icmp ne %struct.addrinfo* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %117 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @AI_NUMERICHOST, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @EAI_NONAME, align 4
  store i32 %123, i32* %4, align 4
  br label %215

124:                                              ; preds = %115, %112
  %125 = load i8*, i8** %5, align 8
  %126 = load i8*, i8** @AF_INET, align 8
  %127 = call i32 @DNSlookup_name(i8* %125, i8* %126, %struct.hostent** %8)
  store i32 %127, i32* %11, align 4
  %128 = load %struct.hostent*, %struct.hostent** %8, align 8
  %129 = icmp eq %struct.hostent* %128, null
  br i1 %129, label %130, label %170

130:                                              ; preds = %124
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @TRY_AGAIN, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @EAI_AGAIN, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134, %130
  %139 = load i32, i32* @EAI_AGAIN, align 4
  store i32 %139, i32* %4, align 4
  br label %215

140:                                              ; preds = %134
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @EAI_NONAME, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %168

144:                                              ; preds = %140
  %145 = load i8*, i8** @AF_INET, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %148 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %147, i32 0, i32 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = bitcast %struct.TYPE_6__* %149 to %struct.sockaddr_in*
  %151 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %150, i32 0, i32 1
  %152 = call i32 @inet_pton(i8* %145, i8* %146, %struct.TYPE_5__* %151)
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %166

154:                                              ; preds = %144
  %155 = load i8*, i8** @AF_INET, align 8
  %156 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %157 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %156, i32 0, i32 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = bitcast %struct.TYPE_6__* %158 to %struct.sockaddr*
  %160 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %159, i32 0, i32 0
  store i8* %155, i8** %160, align 8
  %161 = load i8*, i8** @AF_INET, align 8
  %162 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %163 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %165 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %164, i32 0, i32 1
  store i32 8, i32* %165, align 8
  store i32 0, i32* %4, align 4
  br label %215

166:                                              ; preds = %144
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %4, align 4
  br label %215

168:                                              ; preds = %140
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %4, align 4
  br label %215

170:                                              ; preds = %124
  %171 = load %struct.hostent*, %struct.hostent** %8, align 8
  %172 = getelementptr inbounds %struct.hostent, %struct.hostent* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %175 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %177 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %176, i32 0, i32 1
  store i32 8, i32* %177, align 8
  %178 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %179 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %178, i32 0, i32 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = bitcast %struct.TYPE_6__* %180 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %181, %struct.sockaddr_in** %9, align 8
  %182 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %183 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %182, i32 0, i32 1
  %184 = load %struct.hostent*, %struct.hostent** %8, align 8
  %185 = getelementptr inbounds %struct.hostent, %struct.hostent* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.hostent*, %struct.hostent** %8, align 8
  %188 = getelementptr inbounds %struct.hostent, %struct.hostent* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @memcpy(%struct.TYPE_5__* %183, i32 %186, i32 %189)
  %191 = load %struct.hostent*, %struct.hostent** %8, align 8
  %192 = getelementptr inbounds %struct.hostent, %struct.hostent* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %195 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %194, i32 0, i32 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  store i8* %193, i8** %197, align 8
  %198 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %199 = icmp ne %struct.addrinfo* %198, null
  br i1 %199, label %200, label %214

200:                                              ; preds = %170
  %201 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %202 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @AI_CANONNAME, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %200
  %208 = load %struct.hostent*, %struct.hostent** %8, align 8
  %209 = getelementptr inbounds %struct.hostent, %struct.hostent* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @estrdup(i32 %210)
  %212 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %213 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %207, %200, %170
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %214, %168, %166, %154, %138, %122, %100, %76, %61, %19
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @inet_pton(i8*, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @DNSlookup_name(i8*, i8*, %struct.hostent**) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @estrdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
