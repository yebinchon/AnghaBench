; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_setdomainname.c_backup_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_setdomainname.c_backup_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@DOMAIN_BACKUP_FILE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @backup_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backup_domain() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  store i32 0, i32* %6, align 4
  %11 = trunc i64 %8 to i32
  %12 = call i32 @memset(i8* %10, i32 0, i32 %11)
  %13 = trunc i64 %8 to i32
  %14 = call i32 @getdomainname(i8* %10, i32 %13)
  %15 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %14)
  %16 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %17 = call i64 @strnlen(i8* %10, i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i32, i32* @DOMAIN_BACKUP_FILE, align 4
  %19 = load i32, i32* @O_WRONLY, align 4
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @O_EXCL, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @open(i32 %18, i32 %23, i32 420)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sge i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ATF_REQUIRE(i32 %27)
  br label %29

29:                                               ; preds = %41, %0
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %10, i64 %32
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %34, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @write(i32 %30, i8* %33, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %29

45:                                               ; preds = %29
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ATF_REQUIRE_EQ(i32 0, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #2

declare dso_local i32 @getdomainname(i8*, i32) #2

declare dso_local i64 @strnlen(i8*, i32) #2

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @ATF_REQUIRE(i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
