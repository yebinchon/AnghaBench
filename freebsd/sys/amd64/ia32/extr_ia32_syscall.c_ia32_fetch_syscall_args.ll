; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_syscall.c_ia32_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_syscall.c_ia32_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.syscall_args, %struct.trapframe*, %struct.proc* }
%struct.syscall_args = type { i64, i32, i8**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.trapframe = type { i32, i32, i32, i64, i32, i64 }
%struct.proc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }

@SYS_syscall = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@SYS___syscall = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia32_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.trapframe*, align 8
  %6 = alloca %struct.syscall_args*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [8 x i8*], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 3
  %14 = load %struct.proc*, %struct.proc** %13, align 8
  store %struct.proc* %14, %struct.proc** %4, align 8
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 2
  %17 = load %struct.trapframe*, %struct.trapframe** %16, align 8
  store %struct.trapframe* %17, %struct.trapframe** %5, align 8
  %18 = load %struct.thread*, %struct.thread** %3, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 1
  store %struct.syscall_args* %19, %struct.syscall_args** %6, align 8
  %20 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr i8, i8* %23, i64 8
  store i8* %24, i8** %7, align 8
  %25 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %26 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %29 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %31 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SYS_syscall, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %1
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @fueword32(i8* %36, i8** %9)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EFAULT, align 4
  store i32 %41, i32* %2, align 4
  br label %166

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %46 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr i8, i8* %47, i64 4
  store i8* %48, i8** %7, align 8
  br label %70

49:                                               ; preds = %1
  %50 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %51 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SYS___syscall, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @fueword32(i8* %56, i8** %9)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @EFAULT, align 4
  store i32 %61, i32* %2, align 4
  br label %166

62:                                               ; preds = %55
  %63 = load i8*, i8** %9, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %66 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr i8, i8* %67, i64 4
  store i8* %68, i8** %7, align 8
  br label %69

69:                                               ; preds = %62, %49
  br label %70

70:                                               ; preds = %69, %42
  %71 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %72 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.proc*, %struct.proc** %4, align 8
  %75 = getelementptr inbounds %struct.proc, %struct.proc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %73, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %70
  %81 = load %struct.proc*, %struct.proc** %4, align 8
  %82 = getelementptr inbounds %struct.proc, %struct.proc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 0
  %87 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %88 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %87, i32 0, i32 3
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %88, align 8
  br label %101

89:                                               ; preds = %70
  %90 = load %struct.proc*, %struct.proc** %4, align 8
  %91 = getelementptr inbounds %struct.proc, %struct.proc* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %96 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %97
  %99 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %100 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %99, i32 0, i32 3
  store %struct.TYPE_4__* %98, %struct.TYPE_4__** %100, align 8
  br label %101

101:                                              ; preds = %89, %80
  %102 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %103 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %108 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %101
  %112 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %113 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds [8 x i8*], [8 x i8*]* %8, i64 0, i64 0
  %119 = bitcast i8** %118 to i8*
  %120 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %121 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i32 @copyin(i8* %117, i8* %119, i32 %125)
  store i32 %126, i32* %10, align 4
  br label %128

127:                                              ; preds = %111, %101
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %127, %116
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %146, %128
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %132 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %129
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [8 x i8*], [8 x i8*]* %8, i64 0, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %141 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %140, i32 0, i32 2
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  store i8* %139, i8** %145, align 8
  br label %146

146:                                              ; preds = %135
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %129

149:                                              ; preds = %129
  %150 = load i32, i32* %10, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load %struct.thread*, %struct.thread** %3, align 8
  %154 = getelementptr inbounds %struct.thread, %struct.thread* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 0, i32* %156, align 4
  %157 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %158 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.thread*, %struct.thread** %3, align 8
  %161 = getelementptr inbounds %struct.thread, %struct.thread* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %159, i32* %163, align 4
  br label %164

164:                                              ; preds = %152, %149
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %60, %40
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @fueword32(i8*, i8**) #1

declare dso_local i32 @copyin(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
