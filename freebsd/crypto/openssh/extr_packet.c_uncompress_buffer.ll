; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_uncompress_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_uncompress_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32, i32* }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@Z_PARTIAL_FLUSH = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.sshbuf*, %struct.sshbuf*)* @uncompress_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncompress_buffer(%struct.ssh* %0, %struct.sshbuf* %1, %struct.sshbuf* %2) #0 {
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
  br label %89

19:                                               ; preds = %3
  %20 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %21 = call i32* @sshbuf_mutable_ptr(%struct.sshbuf* %20)
  %22 = load %struct.ssh*, %struct.ssh** %5, align 8
  %23 = getelementptr inbounds %struct.ssh, %struct.ssh* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32* %21, i32** %26, align 8
  %27 = icmp eq i32* %21, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %29, i32* %4, align 4
  br label %89

30:                                               ; preds = %19
  %31 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %32 = call i32 @sshbuf_len(%struct.sshbuf* %31)
  %33 = load %struct.ssh*, %struct.ssh** %5, align 8
  %34 = getelementptr inbounds %struct.ssh, %struct.ssh* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %32, i32* %37, align 8
  br label %38

38:                                               ; preds = %88, %30
  %39 = getelementptr inbounds [4096 x i32], [4096 x i32]* %8, i64 0, i64 0
  %40 = load %struct.ssh*, %struct.ssh** %5, align 8
  %41 = getelementptr inbounds %struct.ssh, %struct.ssh* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32* %39, i32** %44, align 8
  %45 = load %struct.ssh*, %struct.ssh** %5, align 8
  %46 = getelementptr inbounds %struct.ssh, %struct.ssh* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 16384, i32* %49, align 8
  %50 = load %struct.ssh*, %struct.ssh** %5, align 8
  %51 = getelementptr inbounds %struct.ssh, %struct.ssh* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* @Z_PARTIAL_FLUSH, align 4
  %55 = call i32 @inflate(%struct.TYPE_4__* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  switch i32 %56, label %80 [
    i32 129, label %57
    i32 132, label %74
    i32 131, label %75
    i32 130, label %77
    i32 128, label %79
  ]

57:                                               ; preds = %38
  %58 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %59 = getelementptr inbounds [4096 x i32], [4096 x i32]* %8, i64 0, i64 0
  %60 = load %struct.ssh*, %struct.ssh** %5, align 8
  %61 = getelementptr inbounds %struct.ssh, %struct.ssh* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = sub i64 16384, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @sshbuf_put(%struct.sshbuf* %58, i32* %59, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %89

73:                                               ; preds = %57
  br label %88

74:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %89

75:                                               ; preds = %38
  %76 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %76, i32* %4, align 4
  br label %89

77:                                               ; preds = %38
  %78 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %78, i32* %4, align 4
  br label %89

79:                                               ; preds = %38
  br label %80

80:                                               ; preds = %38, %79
  %81 = load %struct.ssh*, %struct.ssh** %5, align 8
  %82 = getelementptr inbounds %struct.ssh, %struct.ssh* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %87, i32* %4, align 4
  br label %89

88:                                               ; preds = %73
  br label %38

89:                                               ; preds = %80, %77, %75, %74, %71, %28, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32* @sshbuf_mutable_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @inflate(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
