; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_uc_pingpong.c_pp_client_exch_dest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_uc_pingpong.c_pp_client_exch_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong_dest = type { i32, i32, i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s for %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Couldn't connect to %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%04x:%06x:%06x:%s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Couldn't send local address\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"client read/write\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Couldn't read/write remote address\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%x:%x:%x:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pingpong_dest* (i8*, i32, %struct.pingpong_dest*)* @pp_client_exch_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pingpong_dest* @pp_client_exch_dest(i8* %0, i32 %1, %struct.pingpong_dest* %2) #0 {
  %4 = alloca %struct.pingpong_dest*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pingpong_dest*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [52 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pingpong_dest*, align 8
  %16 = alloca [33 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pingpong_dest* %2, %struct.pingpong_dest** %7, align 8
  %17 = bitcast %struct.addrinfo* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  %19 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 4
  %21 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %21, i32* %20, align 8
  store i32 -1, i32* %14, align 4
  store %struct.pingpong_dest* null, %struct.pingpong_dest** %15, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @asprintf(i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %struct.pingpong_dest* null, %struct.pingpong_dest** %4, align 8
  br label %153

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @getaddrinfo(i8* %27, i8* %28, %struct.addrinfo* %10, %struct.addrinfo** %8)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i8* @gai_strerror(i32 %34)
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %36, i32 %37)
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @free(i8* %39)
  store %struct.pingpong_dest* null, %struct.pingpong_dest** %4, align 8
  br label %153

41:                                               ; preds = %26
  %42 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %42, %struct.addrinfo** %9, align 8
  br label %43

43:                                               ; preds = %74, %41
  %44 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %45 = icmp ne %struct.addrinfo* %44, null
  br i1 %45, label %46, label %78

46:                                               ; preds = %43
  %47 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @socket(i32 %49, i32 %52, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %46
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @connect(i32 %60, i32 %63, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %59
  br label %78

70:                                               ; preds = %59
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @close(i32 %71)
  store i32 -1, i32* %14, align 4
  br label %73

73:                                               ; preds = %70, %46
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %76 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %75, i32 0, i32 5
  %77 = load %struct.addrinfo*, %struct.addrinfo** %76, align 8
  store %struct.addrinfo* %77, %struct.addrinfo** %9, align 8
  br label %43

78:                                               ; preds = %69, %43
  %79 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %80 = call i32 @freeaddrinfo_null(%struct.addrinfo* %79)
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32, i32* @stderr, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %87, i32 %88)
  store %struct.pingpong_dest* null, %struct.pingpong_dest** %4, align 8
  br label %153

90:                                               ; preds = %78
  %91 = load %struct.pingpong_dest*, %struct.pingpong_dest** %7, align 8
  %92 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %91, i32 0, i32 3
  %93 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i64 0, i64 0
  %94 = call i32 @gid_to_wire_gid(i32* %92, i8* %93)
  %95 = getelementptr inbounds [52 x i8], [52 x i8]* %12, i64 0, i64 0
  %96 = load %struct.pingpong_dest*, %struct.pingpong_dest** %7, align 8
  %97 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pingpong_dest*, %struct.pingpong_dest** %7, align 8
  %100 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pingpong_dest*, %struct.pingpong_dest** %7, align 8
  %103 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i64 0, i64 0
  %106 = call i32 @sprintf(i8* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %101, i32 %104, i8* %105)
  %107 = load i32, i32* %14, align 4
  %108 = getelementptr inbounds [52 x i8], [52 x i8]* %12, i64 0, i64 0
  %109 = call i32 @write(i32 %107, i8* %108, i32 52)
  %110 = sext i32 %109 to i64
  %111 = icmp ne i64 %110, 52
  br i1 %111, label %112, label %115

112:                                              ; preds = %90
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %149

115:                                              ; preds = %90
  %116 = load i32, i32* %14, align 4
  %117 = getelementptr inbounds [52 x i8], [52 x i8]* %12, i64 0, i64 0
  %118 = call i32 @read(i32 %116, i8* %117, i32 52)
  %119 = sext i32 %118 to i64
  %120 = icmp ne i64 %119, 52
  br i1 %120, label %126, label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @write(i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %124 = sext i32 %123 to i64
  %125 = icmp ne i64 %124, 5
  br i1 %125, label %126, label %130

126:                                              ; preds = %121, %115
  %127 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %128 = load i32, i32* @stderr, align 4
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %149

130:                                              ; preds = %121
  %131 = call %struct.pingpong_dest* @malloc(i32 16)
  store %struct.pingpong_dest* %131, %struct.pingpong_dest** %15, align 8
  %132 = load %struct.pingpong_dest*, %struct.pingpong_dest** %15, align 8
  %133 = icmp ne %struct.pingpong_dest* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  br label %149

135:                                              ; preds = %130
  %136 = getelementptr inbounds [52 x i8], [52 x i8]* %12, i64 0, i64 0
  %137 = load %struct.pingpong_dest*, %struct.pingpong_dest** %15, align 8
  %138 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %137, i32 0, i32 0
  %139 = load %struct.pingpong_dest*, %struct.pingpong_dest** %15, align 8
  %140 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %139, i32 0, i32 1
  %141 = load %struct.pingpong_dest*, %struct.pingpong_dest** %15, align 8
  %142 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %141, i32 0, i32 2
  %143 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i64 0, i64 0
  %144 = call i32 @sscanf(i8* %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %138, i32* %140, i32* %142, i8* %143)
  %145 = getelementptr inbounds [33 x i8], [33 x i8]* %16, i64 0, i64 0
  %146 = load %struct.pingpong_dest*, %struct.pingpong_dest** %15, align 8
  %147 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %146, i32 0, i32 3
  %148 = call i32 @wire_gid_to_gid(i8* %145, i32* %147)
  br label %149

149:                                              ; preds = %135, %134, %126, %112
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @close(i32 %150)
  %152 = load %struct.pingpong_dest*, %struct.pingpong_dest** %15, align 8
  store %struct.pingpong_dest* %152, %struct.pingpong_dest** %4, align 8
  br label %153

153:                                              ; preds = %149, %85, %32, %25
  %154 = load %struct.pingpong_dest*, %struct.pingpong_dest** %4, align 8
  ret %struct.pingpong_dest* %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @asprintf(i8**, i8*, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @connect(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @freeaddrinfo_null(%struct.addrinfo*) #2

declare dso_local i32 @gid_to_wire_gid(i32*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i8*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local %struct.pingpong_dest* @malloc(i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i8*) #2

declare dso_local i32 @wire_gid_to_gid(i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
