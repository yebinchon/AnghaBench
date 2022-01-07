; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_main.c_efind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_main.c_efind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@efind.efbuf = internal global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"REG_%s\00", align 1
@REG_ATOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @efind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efind(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @efind.efbuf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = call i32 @strlen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @efind.efbuf, i64 0, i64 0))
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 100
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @efind.efbuf, i64 0, i64 0), i8** %11, align 8
  %12 = load i32, i32* @REG_ATOI, align 4
  %13 = call i32 @regerror(i32 %12, %struct.TYPE_3__* %3, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @efind.efbuf, i64 0, i64 0), i32 100)
  %14 = call i32 @atoi(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @efind.efbuf, i64 0, i64 0))
  ret i32 %14
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @regerror(i32, %struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
