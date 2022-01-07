; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_security_password = type { i32, i32 }
%struct.ata_cmd = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"Issuing %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c" password='%s', user='%s'\00", align 1
@ATA_SECURITY_PASSWORD_MASTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@ATA_SECURITY_SET_PASSWORD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c", mode='%s'\00", align 1
@ATA_SECURITY_LEVEL_MAXIMUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.ata_security_password*)* @atasecurity_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atasecurity_notify(i64 %0, %struct.ata_security_password* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ata_security_password*, align 8
  %5 = alloca %struct.ata_cmd, align 8
  %6 = alloca [5 x i8], align 1
  store i64 %0, i64* %3, align 8
  store %struct.ata_security_password* %1, %struct.ata_security_password** %4, align 8
  %7 = call i32 @bzero(%struct.ata_cmd* %5, i32 8)
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %5, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = call i8* @ata_op_string(%struct.ata_cmd* %5)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load %struct.ata_security_password*, %struct.ata_security_password** %4, align 8
  %13 = icmp ne %struct.ata_security_password* %12, null
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 4
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %17 = load %struct.ata_security_password*, %struct.ata_security_password** %4, align 8
  %18 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strncpy(i8* %16, i32 %19, i32 4)
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %22 = load %struct.ata_security_password*, %struct.ata_security_password** %4, align 8
  %23 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATA_SECURITY_PASSWORD_MASTER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %29)
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @ATA_SECURITY_SET_PASSWORD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %14
  %35 = load %struct.ata_security_password*, %struct.ata_security_password** %4, align 8
  %36 = getelementptr inbounds %struct.ata_security_password, %struct.ata_security_password* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATA_SECURITY_LEVEL_MAXIMUM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %34, %14
  br label %45

45:                                               ; preds = %44, %2
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bzero(%struct.ata_cmd*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ata_op_string(%struct.ata_cmd*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
