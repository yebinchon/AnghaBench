; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_reply_remove_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_reply_remove_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_reply_remove_auth(%struct.reply_info* %0, i64 %1) #0 {
  %3 = alloca %struct.reply_info*, align 8
  %4 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %7 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @log_assert(i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %14 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @log_assert(i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %21 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %24 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = icmp ult i64 %19, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @log_assert(i32 %28)
  %30 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %31 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %32, %33
  %35 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %37, %38
  %40 = add i64 %39, 1
  %41 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %42 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = sub i64 %43, %44
  %46 = sub i64 %45, 1
  %47 = mul i64 8, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memmove(i64 %34, i64 %40, i32 %48)
  %50 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %51 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %55 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %55, align 8
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
