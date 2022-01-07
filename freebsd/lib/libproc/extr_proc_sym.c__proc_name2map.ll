; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c__proc_name2map.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c__proc_name2map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.proc_handle = type { i64, i64, %struct.map_info* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.map_info* (%struct.proc_handle*, i8*)* @_proc_name2map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.map_info* @_proc_name2map(%struct.proc_handle* %0, i8* %1) #0 {
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca %struct.proc_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.map_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %11, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.map_info* null, %struct.map_info** %3, align 8
  store i32 1, i32* %12, align 4
  br label %111

21:                                               ; preds = %2
  %22 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %23 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %28 = call i32* @proc_rdagent(%struct.proc_handle* %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.map_info* null, %struct.map_info** %3, align 8
  store i32 1, i32* %12, align 4
  br label %111

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %21
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %59, %32
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %36 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %33
  %40 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %41 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %40, i32 0, i32 2
  %42 = load %struct.map_info*, %struct.map_info** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.map_info, %struct.map_info* %42, i64 %43
  store %struct.map_info* %44, %struct.map_info** %9, align 8
  %45 = load %struct.map_info*, %struct.map_info** %9, align 8
  %46 = getelementptr inbounds %struct.map_info, %struct.map_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = trunc i64 %14 to i32
  %50 = call i32 @strlcpy(i8* %16, i32 %48, i32 %49)
  %51 = call i8* @basename(i8* %16)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strcmp(i8* %52, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = load %struct.map_info*, %struct.map_info** %9, align 8
  store %struct.map_info* %57, %struct.map_info** %3, align 8
  store i32 1, i32* %12, align 4
  br label %111

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %33

62:                                               ; preds = %33
  store i64 0, i64* %10, align 8
  br label %63

63:                                               ; preds = %90, %62
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %66 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %63
  %70 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %71 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %70, i32 0, i32 2
  %72 = load %struct.map_info*, %struct.map_info** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.map_info, %struct.map_info* %72, i64 %73
  store %struct.map_info* %74, %struct.map_info** %9, align 8
  %75 = load %struct.map_info*, %struct.map_info** %9, align 8
  %76 = getelementptr inbounds %struct.map_info, %struct.map_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = trunc i64 %14 to i32
  %80 = call i32 @strlcpy(i8* %16, i32 %78, i32 %79)
  %81 = call i8* @basename(i8* %16)
  store i8* %81, i8** %8, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i64 @strncmp(i8* %82, i8* %83, i64 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %69
  %88 = load %struct.map_info*, %struct.map_info** %9, align 8
  store %struct.map_info* %88, %struct.map_info** %3, align 8
  store i32 1, i32* %12, align 4
  br label %111

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %10, align 8
  br label %63

93:                                               ; preds = %63
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %99 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %100 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %99, i32 0, i32 2
  %101 = load %struct.map_info*, %struct.map_info** %100, align 8
  %102 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %103 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.map_info, %struct.map_info* %101, i64 %104
  %106 = getelementptr inbounds %struct.map_info, %struct.map_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.map_info* @_proc_addr2map(%struct.proc_handle* %98, i32 %108)
  store %struct.map_info* %109, %struct.map_info** %3, align 8
  store i32 1, i32* %12, align 4
  br label %111

110:                                              ; preds = %93
  store %struct.map_info* null, %struct.map_info** %3, align 8
  store i32 1, i32* %12, align 4
  br label %111

111:                                              ; preds = %110, %97, %87, %56, %30, %20
  %112 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load %struct.map_info*, %struct.map_info** %3, align 8
  ret %struct.map_info* %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32* @proc_rdagent(%struct.proc_handle*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i8* @basename(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local %struct.map_info* @_proc_addr2map(%struct.proc_handle*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
