; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_decodenetnum.c_decodenetnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_decodenetnum.c_decodenetnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32 }

@Z_AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ntp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@NTP_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decodenetnum(i8* %0, %struct.addrinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo, align 4
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [80 x i8], align 16
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  store i8* %0, i8** %4, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @REQUIRE(i32 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = icmp uge i64 %23, 80
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %157

26:                                               ; preds = %2
  store i8* null, i8** %11, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 91, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 58)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp eq i8* null, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  store i8* %38, i8** %10, align 8
  br label %57

39:                                               ; preds = %32
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = call i8* @strchr(i8* %41, i8 signext 58)
  %43 = icmp ne i8* null, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  store i8* %45, i8** %10, align 8
  br label %56

46:                                               ; preds = %39
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strlcpy(i8* %47, i8* %48, i32 80)
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 58)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %11, align 8
  br label %56

56:                                               ; preds = %46, %44
  br label %57

57:                                               ; preds = %56, %37
  br label %104

58:                                               ; preds = %26
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %60, i8** %10, align 8
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  store i8* %61, i8** %13, align 8
  br label %62

62:                                               ; preds = %74, %58
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 93, %70
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i1 [ false, %62 ], [ %71, %67 ]
  br i1 %73, label %74, label %80

74:                                               ; preds = %72
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  %77 = load i8, i8* %75, align 1
  %78 = load i8*, i8** %13, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %13, align 8
  store i8 %77, i8* %78, align 1
  br label %62

80:                                               ; preds = %72
  %81 = load i8*, i8** %13, align 8
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 93, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %80
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 58, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 0, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  store i8* %101, i8** %11, align 8
  br label %102

102:                                              ; preds = %99, %93, %87, %80
  %103 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %102, %57
  %105 = bitcast { i64, i32 }* %15 to i8*
  %106 = bitcast %struct.addrinfo* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 12, i1 false)
  %107 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %108 = load i64, i64* %107, align 4
  %109 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ZERO(i64 %108, i32 %110)
  %112 = load i32, i32* @Z_AI_NUMERICHOST, align 4
  %113 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  store i32 %112, i32* %113, align 4
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @getaddrinfo(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %157

119:                                              ; preds = %104
  %120 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %121 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp ule i64 %123, 12
  %125 = zext i1 %124 to i32
  %126 = call i32 @INSIST(i32 %125)
  %127 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %128 = bitcast { i64, i32 }* %16 to i8*
  %129 = bitcast %struct.addrinfo* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 12, i1 false)
  %130 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %131 = load i64, i64* %130, align 4
  %132 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ZERO(i64 %131, i32 %133)
  %135 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %136 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %137 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %140 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @memcpy(%struct.addrinfo* %135, i32 %138, i32 %141)
  %143 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %144 = call i32 @freeaddrinfo(%struct.addrinfo* %143)
  %145 = load i8*, i8** %11, align 8
  %146 = icmp eq i8* null, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %119
  %148 = load i8*, i8** %11, align 8
  %149 = call i32 @sscanf(i8* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %150 = icmp ne i32 1, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147, %119
  %152 = load i32, i32* @NTP_PORT, align 4
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %151, %147
  %154 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @SET_PORT(%struct.addrinfo* %154, i32 %155)
  store i32 1, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %118, %25
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @ZERO(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @memcpy(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @SET_PORT(%struct.addrinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
