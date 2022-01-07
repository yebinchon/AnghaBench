; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_fcntl_getlocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_fcntl_getlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@F_RDLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i64 0, align 8
@F_GETLK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, %struct.flock*, %struct.flock*)* @fcntl_getlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcntl_getlocks(i32 %0, i64 %1, i64 %2, %struct.flock* %3, %struct.flock* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.flock*, align 8
  %11 = alloca %struct.flock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.flock, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.flock* %3, %struct.flock** %10, align 8
  store %struct.flock* %4, %struct.flock** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 1
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 3
  %21 = load i32, i32* @F_RDLCK, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 4
  %24 = load i64, i64* @SEEK_SET, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 7
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.flock*, %struct.flock** %10, align 8
  %30 = load %struct.flock*, %struct.flock** %11, align 8
  %31 = icmp eq %struct.flock* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %142

34:                                               ; preds = %5
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @F_GETLK, align 4
  %37 = call i32 @rump_sys_fcntl(i32 %35, i32 %36, %struct.flock* %13)
  %38 = call i32 @RL(i32 %37)
  %39 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @F_UNLCK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %6, align 4
  br label %142

45:                                               ; preds = %34
  %46 = load %struct.flock*, %struct.flock** %10, align 8
  %47 = getelementptr inbounds %struct.flock, %struct.flock* %46, i32 1
  store %struct.flock* %47, %struct.flock** %10, align 8
  %48 = bitcast %struct.flock* %46 to i8*
  %49 = bitcast %struct.flock* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 64, i1 false)
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %12, align 4
  %52 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SEEK_SET, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ATF_REQUIRE(i32 %56)
  %58 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %45
  %63 = load i32, i32* %7, align 4
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load %struct.flock*, %struct.flock** %10, align 8
  %70 = load %struct.flock*, %struct.flock** %11, align 8
  %71 = call i32 @fcntl_getlocks(i32 %63, i64 %64, i64 %68, %struct.flock* %69, %struct.flock* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.flock*, %struct.flock** %10, align 8
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds %struct.flock, %struct.flock* %76, i64 %77
  store %struct.flock* %78, %struct.flock** %10, align 8
  %79 = load %struct.flock*, %struct.flock** %10, align 8
  %80 = load %struct.flock*, %struct.flock** %11, align 8
  %81 = icmp eq %struct.flock* %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %62
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  br label %142

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84, %45
  %86 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %6, align 4
  br label %142

91:                                               ; preds = %85
  %92 = load i64, i64* %9, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %97, %99
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.flock*, %struct.flock** %10, align 8
  %103 = load %struct.flock*, %struct.flock** %11, align 8
  %104 = call i32 @fcntl_getlocks(i32 %95, i64 %100, i64 %101, %struct.flock* %102, %struct.flock* %103)
  %105 = load i32, i32* %12, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %140

107:                                              ; preds = %91
  %108 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %109, %111
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = add nsw i64 %113, %114
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %119, %121
  %123 = load i64, i64* %8, align 8
  %124 = sub nsw i64 %122, %123
  %125 = load i64, i64* %9, align 8
  %126 = sub nsw i64 %125, %124
  store i64 %126, i64* %9, align 8
  %127 = load i32, i32* %7, align 4
  %128 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.flock, %struct.flock* %13, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %129, %131
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.flock*, %struct.flock** %10, align 8
  %135 = load %struct.flock*, %struct.flock** %11, align 8
  %136 = call i32 @fcntl_getlocks(i32 %127, i64 %132, i64 %133, %struct.flock* %134, %struct.flock* %135)
  %137 = load i32, i32* %12, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %117, %107
  br label %140

140:                                              ; preds = %139, %94
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %140, %89, %82, %43, %32
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_fcntl(i32, i32, %struct.flock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ATF_REQUIRE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
