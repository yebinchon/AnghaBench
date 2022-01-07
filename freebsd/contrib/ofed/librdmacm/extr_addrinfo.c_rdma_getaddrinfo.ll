; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_rdma_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_rdma_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addrinfo = type { i32, i64, i32, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nohints = common dso_local global %struct.rdma_addrinfo zeroinitializer, align 8
@RAI_PASSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_getaddrinfo(i8* %0, i8* %1, %struct.rdma_addrinfo* %2, %struct.rdma_addrinfo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rdma_addrinfo*, align 8
  %9 = alloca %struct.rdma_addrinfo**, align 8
  %10 = alloca %struct.rdma_addrinfo*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.rdma_addrinfo* %2, %struct.rdma_addrinfo** %8, align 8
  store %struct.rdma_addrinfo** %3, %struct.rdma_addrinfo*** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %19 = icmp ne %struct.rdma_addrinfo* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @ERR(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %137

23:                                               ; preds = %17, %14, %4
  %24 = call i32 (...) @ucma_init()
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %137

29:                                               ; preds = %23
  %30 = call %struct.rdma_addrinfo* @calloc(i32 1, i32 48)
  store %struct.rdma_addrinfo* %30, %struct.rdma_addrinfo** %10, align 8
  %31 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %32 = icmp ne %struct.rdma_addrinfo* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @ERR(i32 %34)
  store i32 %35, i32* %5, align 4
  br label %137

36:                                               ; preds = %29
  %37 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %38 = icmp ne %struct.rdma_addrinfo* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store %struct.rdma_addrinfo* @nohints, %struct.rdma_addrinfo** %8, align 8
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43, %40
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %50 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %51 = call i32 @ucma_getaddrinfo(i8* %47, i8* %48, %struct.rdma_addrinfo* %49, %struct.rdma_addrinfo* %50)
  store i32 %51, i32* %11, align 4
  br label %90

52:                                               ; preds = %43
  %53 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %54 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %57 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %59 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %62 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %64 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %67 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %69 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %72 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %74 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %52
  %78 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %79 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %78, i32 0, i32 4
  %80 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %81 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %80, i32 0, i32 3
  %82 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %83 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %86 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ucma_copy_addr(i32* %79, i64* %81, i32 %84, i64 %87)
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %77, %52
  br label %90

90:                                               ; preds = %89, %46
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %133

94:                                               ; preds = %90
  %95 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %96 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %120, label %99

99:                                               ; preds = %94
  %100 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %101 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %99
  %105 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %106 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %105, i32 0, i32 2
  %107 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %108 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %107, i32 0, i32 1
  %109 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %110 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %113 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @ucma_copy_addr(i32* %106, i64* %108, i32 %111, i64 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  br label %133

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %99, %94
  %121 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %122 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @RAI_PASSIVE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %120
  %128 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %129 = call i32 @ucma_ib_resolve(%struct.rdma_addrinfo** %10, %struct.rdma_addrinfo* %128)
  br label %130

130:                                              ; preds = %127, %120
  %131 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %132 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %9, align 8
  store %struct.rdma_addrinfo* %131, %struct.rdma_addrinfo** %132, align 8
  store i32 0, i32* %5, align 4
  br label %137

133:                                              ; preds = %118, %93
  %134 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %135 = call i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo* %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %130, %33, %27, %20
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @ucma_init(...) #1

declare dso_local %struct.rdma_addrinfo* @calloc(i32, i32) #1

declare dso_local i32 @ucma_getaddrinfo(i8*, i8*, %struct.rdma_addrinfo*, %struct.rdma_addrinfo*) #1

declare dso_local i32 @ucma_copy_addr(i32*, i64*, i32, i64) #1

declare dso_local i32 @ucma_ib_resolve(%struct.rdma_addrinfo**, %struct.rdma_addrinfo*) #1

declare dso_local i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
