; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat_compat.c_freebsd11_procstat_get_socket_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat_compat.c_freebsd11_procstat_get_socket_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.filestat = type { i32 }
%struct.freebsd11_sockstat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sockstat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd11_procstat_get_socket_info(%struct.procstat* %0, %struct.filestat* %1, %struct.freebsd11_sockstat* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.procstat*, align 8
  %7 = alloca %struct.filestat*, align 8
  %8 = alloca %struct.freebsd11_sockstat*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sockstat, align 4
  %11 = alloca i32, align 4
  store %struct.procstat* %0, %struct.procstat** %6, align 8
  store %struct.filestat* %1, %struct.filestat** %7, align 8
  store %struct.freebsd11_sockstat* %2, %struct.freebsd11_sockstat** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.procstat*, %struct.procstat** %6, align 8
  %13 = load %struct.filestat*, %struct.filestat** %7, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @procstat_get_socket_info(%struct.procstat* %12, %struct.filestat* %13, %struct.sockstat* %10, i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %71

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %24 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 10
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %28 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %32 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %36 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %40 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %44 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %48 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %52 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %56 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %60 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %64 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.freebsd11_sockstat*, %struct.freebsd11_sockstat** %8, align 8
  %66 = getelementptr inbounds %struct.freebsd11_sockstat, %struct.freebsd11_sockstat* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.sockstat, %struct.sockstat* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32 %67, i32 %69, i32 4)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %20, %18
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @procstat_get_socket_info(%struct.procstat*, %struct.filestat*, %struct.sockstat*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
