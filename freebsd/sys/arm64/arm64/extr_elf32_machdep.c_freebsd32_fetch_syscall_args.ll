; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_elf32_machdep.c_freebsd32_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_elf32_machdep.c_freebsd32_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.TYPE_6__*, %struct.syscall_args, %struct.proc* }
%struct.TYPE_6__ = type { i8** }
%struct.syscall_args = type { i64, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.proc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }

@SYS_syscall = common dso_local global i64 0, align 8
@SYS___syscall = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Too many system call arguiments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @freebsd32_fetch_syscall_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freebsd32_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.syscall_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.thread* %0, %struct.thread** %2, align 8
  store i32 4, i32* %8, align 4
  %10 = load %struct.thread*, %struct.thread** %2, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 3
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  store %struct.proc* %12, %struct.proc** %3, align 8
  %13 = load %struct.thread*, %struct.thread** %2, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  store i8** %17, i8*** %4, align 8
  %18 = load %struct.thread*, %struct.thread** %2, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 2
  store %struct.syscall_args* %19, %struct.syscall_args** %5, align 8
  %20 = load %struct.thread*, %struct.thread** %2, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 7
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %29 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %31 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SYS_syscall, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %4, align 8
  %38 = load i8*, i8** %36, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %41 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %8, align 4
  br label %62

44:                                               ; preds = %1
  %45 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %46 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SYS___syscall, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i8**, i8*** %4, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %56 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %57, 2
  store i32 %58, i32* %8, align 4
  %59 = load i8**, i8*** %4, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  store i8** %60, i8*** %4, align 8
  br label %61

61:                                               ; preds = %50, %44
  br label %62

62:                                               ; preds = %61, %35
  %63 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %64 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.proc*, %struct.proc** %3, align 8
  %67 = getelementptr inbounds %struct.proc, %struct.proc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp uge i64 %65, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = load %struct.proc*, %struct.proc** %3, align 8
  %74 = getelementptr inbounds %struct.proc, %struct.proc* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 0
  %79 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %80 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %79, i32 0, i32 3
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %80, align 8
  br label %93

81:                                               ; preds = %62
  %82 = load %struct.proc*, %struct.proc** %3, align 8
  %83 = getelementptr inbounds %struct.proc, %struct.proc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %88 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %89
  %91 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %92 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %91, i32 0, i32 3
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %92, align 8
  br label %93

93:                                               ; preds = %81, %72
  %94 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %95 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %94, i32 0, i32 3
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %100 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %118, %93
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load i8**, i8*** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %113 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  br label %118

118:                                              ; preds = %105
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %101

121:                                              ; preds = %101
  %122 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %123 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %181

127:                                              ; preds = %121
  %128 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %129 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sub nsw i32 %130, %131
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %134 = call i32 @nitems(i32* %133)
  %135 = icmp sgt i32 %132, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %127
  %139 = load %struct.thread*, %struct.thread** %2, align 8
  %140 = getelementptr inbounds %struct.thread, %struct.thread* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 13
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %147 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %148 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sub nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = call i32 @copyin(i8* %145, i32* %146, i32 %154)
  store i32 %155, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %177, %138
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %159 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sub nsw i32 %160, %161
  %163 = icmp slt i32 %157, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %156
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %170 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %171, i64 %175
  store i32 %168, i32* %176, align 4
  br label %177

177:                                              ; preds = %164
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %156

180:                                              ; preds = %156
  br label %181

181:                                              ; preds = %180, %121
  %182 = load %struct.thread*, %struct.thread** %2, align 8
  %183 = getelementptr inbounds %struct.thread, %struct.thread* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  store i64 0, i64* %185, align 8
  %186 = load %struct.thread*, %struct.thread** %2, align 8
  %187 = getelementptr inbounds %struct.thread, %struct.thread* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 1
  store i64 0, i64* %189, align 8
  ret i32 0
}

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @copyin(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
