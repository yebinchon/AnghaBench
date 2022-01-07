; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_check_kod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_check_kod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }
%struct.kod_entry = type opaque

@.str = private unnamed_addr constant [26 x i8] c"check_kod: checking <%s>\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"prior KoD for %s, skipping.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_kod(%struct.addrinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kod_entry*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %3, align 8
  %6 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %7 = call i8* @addrinfo_to_str(%struct.addrinfo* %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @TRACE(i32 2, i8* %8)
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast %struct.kod_entry** %5 to i8**
  %12 = call i64 @search_entry(i8* %10, i8** %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load %struct.kod_entry*, %struct.kod_entry** %5, align 8
  %18 = bitcast %struct.kod_entry* %17 to i8*
  %19 = call i32 @free(i8* %18)
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @free(i8* %20)
  store i32 1, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @free(i8* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i8* @addrinfo_to_str(%struct.addrinfo*) #1

declare dso_local i32 @TRACE(i32, i8*) #1

declare dso_local i64 @search_entry(i8*, i8**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
