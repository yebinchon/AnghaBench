; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_add_server_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_add_server_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i64, %struct.rad_server* }
%struct.rad_server = type { i32, i32, i32, i32, i64, i64, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32, i32 }
%struct.in_addr = type { i32 }
%struct.hostent = type { i32 }
%struct.servent = type { i8* }

@MAXSERVERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Too many RADIUS servers specified\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: host not found\00", align 1
@RADIUS_AUTH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@RADIUS_PORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"radacct\00", align 1
@RADACCT_PORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_add_server_ex(%struct.rad_handle* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, %struct.in_addr* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.rad_handle*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.in_addr*, align 8
  %18 = alloca %struct.rad_server*, align 8
  %19 = alloca %struct.hostent*, align 8
  %20 = alloca %struct.servent*, align 8
  store %struct.rad_handle* %0, %struct.rad_handle** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.in_addr* %7, %struct.in_addr** %17, align 8
  %21 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %22 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAXSERVERS, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %28 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %149

29:                                               ; preds = %8
  %30 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %31 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %30, i32 0, i32 2
  %32 = load %struct.rad_server*, %struct.rad_server** %31, align 8
  %33 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %34 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %32, i64 %35
  store %struct.rad_server* %36, %struct.rad_server** %18, align 8
  %37 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %38 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %37, i32 0, i32 8
  %39 = call i32 @memset(%struct.TYPE_2__* %38, i32 0, i32 24)
  %40 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %41 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 24, i32* %42, align 8
  %43 = load i32, i32* @AF_INET, align 4
  %44 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %45 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %49 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = call i32 @inet_aton(i8* %47, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %29
  %54 = load i8*, i8** %11, align 8
  %55 = call %struct.hostent* @gethostbyname(i8* %54)
  store %struct.hostent* %55, %struct.hostent** %19, align 8
  %56 = icmp eq %struct.hostent* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i32 -1, i32* %9, align 4
  br label %149

61:                                               ; preds = %53
  %62 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %63 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load %struct.hostent*, %struct.hostent** %19, align 8
  %66 = getelementptr inbounds %struct.hostent, %struct.hostent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32* %64, i32 %67, i32 4)
  br label %69

69:                                               ; preds = %61, %29
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = call i8* @htons(i32 %73)
  %75 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %76 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  br label %115

78:                                               ; preds = %69
  %79 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %80 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RADIUS_AUTH, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.servent* %85, %struct.servent** %20, align 8
  %86 = icmp ne %struct.servent* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.servent*, %struct.servent** %20, align 8
  %89 = getelementptr inbounds %struct.servent, %struct.servent* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  br label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @RADIUS_PORT, align 4
  %93 = call i8* @htons(i32 %92)
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi i8* [ %90, %87 ], [ %93, %91 ]
  %96 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %97 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i8* %95, i8** %98, align 8
  br label %114

99:                                               ; preds = %78
  %100 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.servent* %100, %struct.servent** %20, align 8
  %101 = icmp ne %struct.servent* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.servent*, %struct.servent** %20, align 8
  %104 = getelementptr inbounds %struct.servent, %struct.servent* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  br label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @RADACCT_PORT, align 4
  %108 = call i8* @htons(i32 %107)
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi i8* [ %105, %102 ], [ %108, %106 ]
  %111 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %112 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i8* %110, i8** %113, align 8
  br label %114

114:                                              ; preds = %109, %94
  br label %115

115:                                              ; preds = %114, %72
  %116 = load i8*, i8** %13, align 8
  %117 = call i32* @strdup(i8* %116)
  %118 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %119 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %118, i32 0, i32 7
  store i32* %117, i32** %119, align 8
  %120 = icmp eq i32* %117, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %123 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %149

124:                                              ; preds = %115
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %127 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %130 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %132 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %131, i32 0, i32 6
  store i64 0, i64* %132, align 8
  %133 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %134 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %137 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %139 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %138, i32 0, i32 4
  store i64 0, i64* %139, align 8
  %140 = load %struct.in_addr*, %struct.in_addr** %17, align 8
  %141 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.rad_server*, %struct.rad_server** %18, align 8
  %144 = getelementptr inbounds %struct.rad_server, %struct.rad_server* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %146 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %146, align 8
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %124, %121, %57, %26
  %150 = load i32, i32* %9, align 4
  ret i32 %150
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @inet_aton(i8*, i32*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
