; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_read_client_leases.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_read_client_leases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@path_dhclient_db = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i32 0, align 4
@LEASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Corrupt lease file - possible data loss!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_client_leases() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @path_dhclient_db, align 4
  %5 = call i32 @new_parse(i32 %4)
  %6 = load i32, i32* @path_dhclient_db, align 4
  %7 = call i32* @fopen(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %1, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %34

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %30, %10
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @next_token(i8** %2, i32* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %31

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @LEASE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = call i32 @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @skip_to_semi(i32* %24)
  br label %31

26:                                               ; preds = %18
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @parse_client_lease_statement(i32* %27, i32 0)
  br label %29

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29
  br i1 true, label %11, label %31

31:                                               ; preds = %30, %22, %17
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @fclose(i32* %32)
  br label %34

34:                                               ; preds = %31, %9
  ret void
}

declare dso_local i32 @new_parse(i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local i32 @parse_client_lease_statement(i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
