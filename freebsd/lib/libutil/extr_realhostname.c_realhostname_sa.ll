; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_realhostname.c_realhostname_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_realhostname.c_realhostname_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64, i32 }
%struct.addrinfo = type { i32, i64, i32, i32*, %struct.sockaddr*, %struct.addrinfo*, i32, i32, i32, i64 }
%struct.sockaddr_in = type { i32, i64, i32, i32*, %struct.sockaddr*, %struct.sockaddr_in*, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@HOSTNAME_INVALIDADDR = common dso_local global i32 0, align 4
@NI_NAMEREQD = common dso_local global i32 0, align 4
@AI_CANONNAME = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@HOSTNAME_INVALIDNAME = common dso_local global i32 0, align 4
@HOSTNAME_INCORRECTNAME = common dso_local global i32 0, align 4
@HOSTNAME_FOUND = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @realhostname_sa(i8* %0, i64 %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.addrinfo, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca %struct.sockaddr*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @NI_MAXHOST, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @HOSTNAME_INVALIDADDR, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = trunc i64 %18 to i32
  %25 = load i32, i32* @NI_NAMEREQD, align 4
  %26 = call i32 @getnameinfo(%struct.sockaddr* %22, i32 %23, i8* %20, i32 %24, i32* null, i32 0, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %144

29:                                               ; preds = %4
  %30 = bitcast %struct.addrinfo* %13 to %struct.sockaddr_in*
  %31 = call i32 @memset(%struct.sockaddr_in* %30, i32 0, i32 72)
  %32 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* @AI_CANONNAME, align 4
  %37 = load i32, i32* @AI_PASSIVE, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @SOCK_STREAM, align 4
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 6
  store i32 %40, i32* %41, align 8
  %42 = bitcast %struct.addrinfo* %13 to %struct.sockaddr_in*
  %43 = bitcast %struct.addrinfo** %14 to %struct.sockaddr_in**
  %44 = call i32 @getaddrinfo(i8* %20, i32* null, %struct.sockaddr_in* %42, %struct.sockaddr_in** %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %29
  %48 = load i32, i32* @HOSTNAME_INVALIDNAME, align 4
  store i32 %48, i32* %9, align 4
  br label %145

49:                                               ; preds = %29
  %50 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  store %struct.addrinfo* %50, %struct.addrinfo** %15, align 8
  br label %51

51:                                               ; preds = %136, %49
  %52 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %53 = icmp eq %struct.addrinfo* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %56 = bitcast %struct.addrinfo* %55 to %struct.sockaddr_in*
  %57 = call i32 @freeaddrinfo(%struct.sockaddr_in* %56)
  %58 = load i32, i32* @HOSTNAME_INCORRECTNAME, align 4
  store i32 %58, i32* %9, align 4
  br label %145

59:                                               ; preds = %51
  %60 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 4
  %62 = load %struct.sockaddr*, %struct.sockaddr** %61, align 8
  store %struct.sockaddr* %62, %struct.sockaddr** %16, align 8
  %63 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %64 = icmp eq %struct.sockaddr* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %67 = bitcast %struct.addrinfo* %66 to %struct.sockaddr_in*
  %68 = call i32 @freeaddrinfo(%struct.sockaddr_in* %67)
  %69 = load i32, i32* @HOSTNAME_INCORRECTNAME, align 4
  store i32 %69, i32* %9, align 4
  br label %145

70:                                               ; preds = %59
  %71 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %72 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %135

76:                                               ; preds = %70
  %77 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %78 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %81 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %135

84:                                               ; preds = %76
  %85 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %86 = call %struct.TYPE_3__* @SOCKINET(%struct.sockaddr* %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %90 = call %struct.TYPE_3__* @SOCKINET(%struct.sockaddr* %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  %92 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %93 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %94 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %95 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memcmp(%struct.sockaddr* %92, %struct.sockaddr* %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %134, label %99

99:                                               ; preds = %84
  %100 = load i32, i32* @HOSTNAME_FOUND, align 4
  store i32 %100, i32* %9, align 4
  %101 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %107 = bitcast %struct.addrinfo* %106 to %struct.sockaddr_in*
  %108 = call i32 @freeaddrinfo(%struct.sockaddr_in* %107)
  br label %145

109:                                              ; preds = %99
  %110 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %111 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = trunc i64 %18 to i32
  %114 = call i32 @strlcpy(i8* %20, i32* %112, i32 %113)
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @trimdomain(i8* %20, i64 %115)
  %117 = call i64 @strlen(i8* %20)
  %118 = load i64, i64* %6, align 8
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %109
  %121 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %122 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AF_INET, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %128 = bitcast %struct.addrinfo* %127 to %struct.sockaddr_in*
  %129 = call i32 @freeaddrinfo(%struct.sockaddr_in* %128)
  br label %145

130:                                              ; preds = %120, %109
  %131 = load i8*, i8** %5, align 8
  %132 = load i64, i64* %6, align 8
  %133 = call i32 @strncpy(i8* %131, i8* %20, i64 %132)
  br label %140

134:                                              ; preds = %84
  br label %135

135:                                              ; preds = %134, %76, %70
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %138 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %137, i32 0, i32 5
  %139 = load %struct.addrinfo*, %struct.addrinfo** %138, align 8
  store %struct.addrinfo* %139, %struct.addrinfo** %14, align 8
  br label %51

140:                                              ; preds = %130
  %141 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %142 = bitcast %struct.addrinfo* %141 to %struct.sockaddr_in*
  %143 = call i32 @freeaddrinfo(%struct.sockaddr_in* %142)
  br label %157

144:                                              ; preds = %4
  br label %145

145:                                              ; preds = %144, %126, %105, %65, %54, %47
  %146 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = trunc i64 %18 to i32
  %149 = load i32, i32* @NI_NUMERICHOST, align 4
  %150 = call i32 @getnameinfo(%struct.sockaddr* %146, i32 %147, i8* %20, i32 %148, i32* null, i32 0, i32 %149)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i8*, i8** %5, align 8
  %154 = load i64, i64* %6, align 8
  %155 = call i32 @strncpy(i8* %153, i8* %20, i64 %154)
  br label %156

156:                                              ; preds = %152, %145
  br label %157

157:                                              ; preds = %156, %140
  %158 = load i32, i32* %9, align 4
  %159 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %159)
  ret i32 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.sockaddr_in*, %struct.sockaddr_in**) #2

declare dso_local i32 @freeaddrinfo(%struct.sockaddr_in*) #2

declare dso_local %struct.TYPE_3__* @SOCKINET(%struct.sockaddr*) #2

declare dso_local i32 @memcmp(%struct.sockaddr*, %struct.sockaddr*, i32) #2

declare dso_local i32 @strlcpy(i8*, i32*, i32) #2

declare dso_local i32 @trimdomain(i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
