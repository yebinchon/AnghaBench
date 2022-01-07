; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_compress_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_compress_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i64, i32* }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@Z_PARTIAL_FLUSH = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.sshbuf*, %struct.sshbuf*)* @compress_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_buffer(%struct.ssh* %0, %struct.sshbuf* %1, %struct.sshbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca %struct.sshbuf*, align 8
  %7 = alloca %struct.sshbuf*, align 8
  %8 = alloca [4096 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %6, align 8
  store %struct.sshbuf* %2, %struct.sshbuf** %7, align 8
  %11 = load %struct.ssh*, %struct.ssh** %5, align 8
  %12 = getelementptr inbounds %struct.ssh, %struct.ssh* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %18, i32* %4, align 4
  br label %100

19:                                               ; preds = %3
  %20 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %21 = call i64 @sshbuf_len(%struct.sshbuf* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %100

24:                                               ; preds = %19
  %25 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %26 = call i32* @sshbuf_mutable_ptr(%struct.sshbuf* %25)
  %27 = load %struct.ssh*, %struct.ssh** %5, align 8
  %28 = getelementptr inbounds %struct.ssh, %struct.ssh* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32* %26, i32** %31, align 8
  %32 = icmp eq i32* %26, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %34, i32* %4, align 4
  br label %100

35:                                               ; preds = %24
  %36 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %37 = call i64 @sshbuf_len(%struct.sshbuf* %36)
  %38 = load %struct.ssh*, %struct.ssh** %5, align 8
  %39 = getelementptr inbounds %struct.ssh, %struct.ssh* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i64 %37, i64* %42, align 8
  br label %43

43:                                               ; preds = %91, %35
  %44 = getelementptr inbounds [4096 x i32], [4096 x i32]* %8, i64 0, i64 0
  %45 = load %struct.ssh*, %struct.ssh** %5, align 8
  %46 = getelementptr inbounds %struct.ssh, %struct.ssh* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32* %44, i32** %49, align 8
  %50 = load %struct.ssh*, %struct.ssh** %5, align 8
  %51 = getelementptr inbounds %struct.ssh, %struct.ssh* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 16384, i32* %54, align 8
  %55 = load %struct.ssh*, %struct.ssh** %5, align 8
  %56 = getelementptr inbounds %struct.ssh, %struct.ssh* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* @Z_PARTIAL_FLUSH, align 4
  %60 = call i32 @deflate(%struct.TYPE_4__* %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  switch i32 %61, label %82 [
    i32 130, label %62
    i32 129, label %64
    i32 128, label %81
  ]

62:                                               ; preds = %43
  %63 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %63, i32* %4, align 4
  br label %100

64:                                               ; preds = %43
  %65 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %66 = getelementptr inbounds [4096 x i32], [4096 x i32]* %8, i64 0, i64 0
  %67 = load %struct.ssh*, %struct.ssh** %5, align 8
  %68 = getelementptr inbounds %struct.ssh, %struct.ssh* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = sub i64 16384, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @sshbuf_put(%struct.sshbuf* %65, i32* %66, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %100

80:                                               ; preds = %64
  br label %90

81:                                               ; preds = %43
  br label %82

82:                                               ; preds = %43, %81
  %83 = load %struct.ssh*, %struct.ssh** %5, align 8
  %84 = getelementptr inbounds %struct.ssh, %struct.ssh* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %89, i32* %4, align 4
  br label %100

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.ssh*, %struct.ssh** %5, align 8
  %93 = getelementptr inbounds %struct.ssh, %struct.ssh* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %43, label %99

99:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %82, %78, %62, %33, %23, %17
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32* @sshbuf_mutable_ptr(%struct.sshbuf*) #1

declare dso_local i32 @deflate(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
