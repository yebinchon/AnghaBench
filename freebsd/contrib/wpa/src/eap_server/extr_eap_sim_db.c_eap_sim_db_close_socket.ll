; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_close_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_close_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sim_db_data*)* @eap_sim_db_close_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_db_close_socket(%struct.eap_sim_db_data* %0) #0 {
  %2 = alloca %struct.eap_sim_db_data*, align 8
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %2, align 8
  %3 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %2, align 8
  %4 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %2, align 8
  %9 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @eloop_unregister_read_sock(i32 %10)
  %12 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %2, align 8
  %13 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @close(i32 %14)
  %16 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %2, align 8
  %17 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  br label %18

18:                                               ; preds = %7, %1
  %19 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %2, align 8
  %20 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %2, align 8
  %25 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @unlink(i32* %26)
  %28 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %2, align 8
  %29 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @os_free(i32* %30)
  %32 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %2, align 8
  %33 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @eloop_unregister_read_sock(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i32*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
