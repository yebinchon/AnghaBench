; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_add_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_add_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_var = type { i32, i8*, i32 }

@EOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @add_var(%struct.ctl_var** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_var**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctl_var*, align 8
  %9 = alloca i8*, align 8
  store %struct.ctl_var** %0, %struct.ctl_var*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ctl_var**, %struct.ctl_var*** %4, align 8
  %11 = load %struct.ctl_var*, %struct.ctl_var** %10, align 8
  %12 = call i32 @count_var(%struct.ctl_var* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ctl_var**, %struct.ctl_var*** %4, align 8
  %14 = load %struct.ctl_var*, %struct.ctl_var** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 24
  %19 = trunc i64 %18 to i32
  %20 = call %struct.ctl_var* @erealloc(%struct.ctl_var* %14, i32 %19)
  %21 = load %struct.ctl_var**, %struct.ctl_var*** %4, align 8
  store %struct.ctl_var* %20, %struct.ctl_var** %21, align 8
  %22 = load %struct.ctl_var**, %struct.ctl_var*** %4, align 8
  %23 = load %struct.ctl_var*, %struct.ctl_var** %22, align 8
  store %struct.ctl_var* %23, %struct.ctl_var** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @emalloc(i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ctl_var*, %struct.ctl_var** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %27, i64 %29
  %31 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.ctl_var*, %struct.ctl_var** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %33, i64 %35
  %37 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %36, i32 0, i32 1
  store i8* %32, i8** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ctl_var*, %struct.ctl_var** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %39, i64 %41
  %43 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %42, i32 0, i32 2
  store i32 %38, i32* %43, align 8
  %44 = load %struct.ctl_var*, %struct.ctl_var** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %44, i64 %47
  %49 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.ctl_var*, %struct.ctl_var** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %50, i64 %53
  %55 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %54, i32 0, i32 1
  store i8* null, i8** %55, align 8
  %56 = load i32, i32* @EOV, align 4
  %57 = load %struct.ctl_var*, %struct.ctl_var** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %57, i64 %60
  %62 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %61, i32 0, i32 2
  store i32 %56, i32* %62, align 8
  %63 = load i8*, i8** %9, align 8
  ret i8* %63
}

declare dso_local i32 @count_var(%struct.ctl_var*) #1

declare dso_local %struct.ctl_var* @erealloc(%struct.ctl_var*, i32) #1

declare dso_local i8* @emalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
