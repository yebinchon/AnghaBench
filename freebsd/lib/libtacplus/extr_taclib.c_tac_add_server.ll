; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_add_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_add_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i64, %struct.tac_server* }
%struct.tac_server = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.hostent = type { i32 }

@MAXSERVERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Too many TACACS+ servers specified\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: host not found\00", align 1
@TACPLUS_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tac_add_server(%struct.tac_handle* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tac_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tac_server*, align 8
  %15 = alloca %struct.hostent*, align 8
  store %struct.tac_handle* %0, %struct.tac_handle** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.tac_handle*, %struct.tac_handle** %8, align 8
  %17 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MAXSERVERS, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.tac_handle*, %struct.tac_handle** %8, align 8
  %23 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %95

24:                                               ; preds = %6
  %25 = load %struct.tac_handle*, %struct.tac_handle** %8, align 8
  %26 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %25, i32 0, i32 1
  %27 = load %struct.tac_server*, %struct.tac_server** %26, align 8
  %28 = load %struct.tac_handle*, %struct.tac_handle** %8, align 8
  %29 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %27, i64 %30
  store %struct.tac_server* %31, %struct.tac_server** %14, align 8
  %32 = load %struct.tac_server*, %struct.tac_server** %14, align 8
  %33 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %32, i32 0, i32 3
  %34 = call i32 @memset(%struct.TYPE_2__* %33, i32 0, i32 16)
  %35 = load %struct.tac_server*, %struct.tac_server** %14, align 8
  %36 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 16, i32* %37, align 8
  %38 = load i32, i32* @AF_INET, align 4
  %39 = load %struct.tac_server*, %struct.tac_server** %14, align 8
  %40 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.tac_server*, %struct.tac_server** %14, align 8
  %44 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = call i32 @inet_aton(i8* %42, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %24
  %49 = load i8*, i8** %9, align 8
  %50 = call %struct.hostent* @gethostbyname(i8* %49)
  store %struct.hostent* %50, %struct.hostent** %15, align 8
  %51 = icmp eq %struct.hostent* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.tac_handle*, %struct.tac_handle** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store i32 -1, i32* %7, align 4
  br label %95

56:                                               ; preds = %48
  %57 = load %struct.tac_server*, %struct.tac_server** %14, align 8
  %58 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load %struct.hostent*, %struct.hostent** %15, align 8
  %61 = getelementptr inbounds %struct.hostent, %struct.hostent* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(i32* %59, i32 %62, i32 4)
  br label %64

64:                                               ; preds = %56, %24
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @TACPLUS_PORT, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 @htons(i32 %72)
  %74 = load %struct.tac_server*, %struct.tac_server** %14, align 8
  %75 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.tac_handle*, %struct.tac_handle** %8, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call i32* @xstrdup(%struct.tac_handle* %77, i8* %78)
  %80 = load %struct.tac_server*, %struct.tac_server** %14, align 8
  %81 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %80, i32 0, i32 2
  store i32* %79, i32** %81, align 8
  %82 = icmp eq i32* %79, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  store i32 -1, i32* %7, align 4
  br label %95

84:                                               ; preds = %71
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.tac_server*, %struct.tac_server** %14, align 8
  %87 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.tac_server*, %struct.tac_server** %14, align 8
  %90 = getelementptr inbounds %struct.tac_server, %struct.tac_server* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.tac_handle*, %struct.tac_handle** %8, align 8
  %92 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %84, %83, %52, %21
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @generr(%struct.tac_handle*, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @inet_aton(i8*, i32*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32* @xstrdup(%struct.tac_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
